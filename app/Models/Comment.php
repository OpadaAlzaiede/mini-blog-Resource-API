<?php

namespace App\Models;

use App\Models\Post;
use App\Models\User;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Comment extends Model
{
    use HasFactory;

    protected $fillable = [
        'content',
        'post_id',
        'user_id',
    ];

    public function post() {
        return $this->belongsTo(Post::class); // One Comment belongs to exactly one post
    }

    
    public function user() {
        return $this->belongsTo(User::class); // One Comment belongs to exactly one User
    }
}
