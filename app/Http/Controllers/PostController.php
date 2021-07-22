<?php

namespace App\Http\Controllers;

use App\Models\Post;
use App\Models\Comment;
use Illuminate\Http\Request;

class PostController extends Controller
{
    /**
     * List & view all blog posts from all other users.
     *
     * @return \Illuminate\Http\Response
     */
    public function index() {
        return response([
            'posts' => Post::where('user_id', '!=', auth()->user()->id)->get(),
        ]);
    }

    /**
     * List & view personal blog posts.
     *
     * @return \Illuminate\Http\Response
     */    
    public function showPersonalPosts() {
        return response([
            'posts' => auth()->user()->posts
        ]);
    }


    /**
     * Create a new post.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request) {
        $postData = $request->validate([
            'title' => 'required|string',
            'body' => 'required'
        ]);
        $postData['user_id'] = auth()->user()->id;

        $newPost = Post::create($postData);

        return response([
            'message' => 'Post Added Succefully',
            'new post' => $newPost
        ]);
    }

    /**
     * show specific blog post.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id) {
        return response([
            'post' => Post::find($id)
        ]);
    }


    /**
     * Update an existing blog post.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id) {
        
        // check for posts existance
        if(!Post::find($id)) 
            return response([
                'message' => 'No Post Found !'
            ]);

        // check if the user owns the post
        if(Post::find($id)->user_id != auth()->user()->id)
            return response([
                'message' =>  "You Can't Update this Resource"
            ]);
       
        $postData = $request->validate([
            'title' => 'required|string',
            'body' => 'required'
        ]);

        Post::find($id)->update($postData);

        return response([
            'message' => 'Post Updated Succefully',
            'post' => Post::find($id)
        ]);
    }

    /**
     * Delete an existing blog post.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id) {

        $post = Post::find($id);

        // check for post existance
        if(!$post)
            return response([
                'message' => 'No Post Found !'
            ]);
        
        // check if the user owns the post
        if($post->user_id != auth()->user()->id)
            return response([
                'message' =>  "You Can't Delete this Resource"
            ]);

        $comments = $post->comments; // get related comments
        foreach($comments as $comment) 
            $comment->delete(); // delete each related comment

        $post->delete(); // delete post

        return response([
            'message' => 'Post Succefully Deleted'
        ]);
    }

     /**
     * Add New Comment to blog Post.
     *@param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */

    public function addNewComment($id, Request $request) {
        // validate comment content
        $commentData = $request->validate([
            'content' => 'required|string|max:200'
        ]);
        $commentData['post_id'] = $id;
        $commentData['user_id'] = auth()->user()->id;

        $newComment = Comment::create($commentData);

        return response([
            'message' => 'Comment Added Succefully',
            'post' => Post::find($id)
        ]);
    }
}
