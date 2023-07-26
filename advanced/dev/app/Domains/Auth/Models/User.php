<?php

namespace App\Domains\Auth\Models;

use App\Domains\Auth\Models\Traits\Attribute\UserAttribute;
use App\Domains\Auth\Models\Traits\Method\UserMethod;
use App\Domains\Auth\Models\Traits\Relationship\UserRelationship;
use App\Domains\Auth\Models\Traits\Scope\UserScope;
use App\Domains\Auth\Notifications\Frontend\VerifyEmail;
use App\Domains\Auth\Notifications\Frontend\ResetPasswordNotification;
use Database\Factories\UserFactory;
use Illuminate\Auth\MustVerifyEmail as MustVerifyEmailTrait;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Lab404\Impersonate\Models\Impersonate;
use Laravel\Sanctum\HasApiTokens;
use Spatie\Permission\Traits\HasRoles;

/**
 * Class User.
 */

class User extends Authenticatable implements MustVerifyEmail
{

    use MustVerifyEmailTrait,
        Notifiable,
        HasApiTokens,
        HasFactory,
        HasRoles,
        Impersonate,
        SoftDeletes,
        UserAttribute,
        UserMethod,
        UserRelationship,
        UserScope;

    public const TYPE_ADMIN = 'Administrators';
    public const TYPE_USER = 'Users';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */

    protected $fillable = [
        'name',
        'email',
        'password',
        

    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array
     */

    protected $hidden = [
        'password',
    ];


    /**
     * @var array
     *
     */
    protected $appends = [
    ];

    /**
     *@var array
     */
    protected $with = [
       
    ];

    /**
     * Send the password reset notification.
     *
     * @param  string  $token
     */

    public function sendPasswordResetNotification($token): void
    {
        $this->Notify(new ResetPasswordNotification($token));
    }

    /**
     * Send the registration verification email.
     */
    public function sendEmailVerificationNotification(): void
    {
        $this->Notify(new VerifyEmail);
    }

    /**
     * Return true or false if the user can impersonate an other user.
     *
     * @param bool
     */
    public function canImpersonate(): bool
    {
        return $this->can('access.user.impersonate');
    }

    /**
     * Return true or false if the user can be impersonate.
     *
     * @param bool
     */
    public function canBeImpersonated(): bool
    {
        return ! $this->isMasterAdmin();
    }

    /**
     * Create a new factory instance for the model.
     *
     * @return \Illuminate\Database\Eloquent\Factories\Factory
     */
    protected static function newFactory()
    {
        return UserFactory::new();
    }
}
