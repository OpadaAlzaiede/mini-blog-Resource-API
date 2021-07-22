<?php

namespace Database\Seeders;

use App\Models\Post;
use App\Models\User;
use App\Models\Comment;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // Seed Data with Realtionships
        User::factory(5)->create()->each(function($user) {
            Post::factory(rand(1, 2))->create([
                'user_id' => $user->id
            ])->each(function($post) {
                Comment::factory(rand(1, 2))->create([
                    'user_id' => $post->user_id,
                    'post_id' => $post->id
                ]);
            });
        });
    }
}
