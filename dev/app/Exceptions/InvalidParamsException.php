<?php

declare(strict_types=1);

namespace App\Exceptions;

use Throwable;

class InvalidParamsException extends Exception
{
    /**
     * Bootstrap.
     *
     * @param mixed $extra
     */
    public function __construct(int $code = self::PARAMS_ERROR, string $message = 'Params Error', $extra = null, Throwable $previous = null)
    {
        parent::__construct($message, $code, $extra, $previous);
    }
}