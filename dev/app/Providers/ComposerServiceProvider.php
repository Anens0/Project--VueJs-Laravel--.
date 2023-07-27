<?php

namespace App\Providers;

use App\Domains\Announcement\Services\AnnouncementService;
use Illuminate\Support\Facades\View;
use Illuminate\Support\ServiceProvider;

/**
 * Class ComposerServiceProvider.
 */
class ComposerServiceProvider extends ServiceProvider
{
    /**
     * Register bindings in the container.
     */
    public function boot(AnnouncementService $announcementService)
    {
        View::composer('*', function ($view) {
            $view->with('logged_in_user', auth()->user());
        });

        View::composer(['index', 'layouts.app'], function ($view) use ($announcementService) {
            $view->with('announcements', $announcementService->getForFrontend());
        });

        View::composer(['layouts.app'], function ($view) use ($announcementService) {
            $view->with('announcements', $announcementService->getForBackend());
        });
    }
}