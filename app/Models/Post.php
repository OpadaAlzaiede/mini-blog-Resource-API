<?php

namespace App\Models;

use App\Models\User;
use App\Models\Comment;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Post extends Model
{
    use HasFactory;

    protected $fillable = [
        'title',
        'body',
        'user_id',
    ];

    
    public function user() {
        return $this->belongsTo(User::class); // one Post Belongs to Exactly one User
    }

    
    public function comments() {
        return $this->hasMany(Comment::class); // one Post Can Have n comments.
    }
}
