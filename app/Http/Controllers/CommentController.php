<?php

namespace App\Http\Controllers;

use App\Models\Post;
use App\Models\Comment;
use Illuminate\Http\Request;

class CommentController extends Controller
{
    public function destroy($id) {

        $comment = Comment::find($id);

        // check for comment existance
        if(!$comment)
            return response([
                'message' => 'No Comment Found !'
            ]);
        
        // check if the user owns the comment
        if($comment->user_id != auth()->user()->id)
            return response([
                'message' => "Can't Delete this comment"
            ]);

        $post = $comment->post; // get post that has the comment.
        $comment->delete();

        return response([
            'message' => 'Comment Succefully Deleted',
            'post' => $post
        ]);
    }
}
