<?php

declare(strict_types=1);

namespace App\Exceptions;

use Psr\Container\ContainerExceptionInterface;
use Throwable;

class ContainerException extends Exception implements ContainerExceptionInterface
{
    /**
     * Bootstrap.
     *
     * @param mixed $extra
     */
    public function __construct(string $message = '', int $code = self::CONTAINER_ERROR, $extra = null, Throwable $previous = null)
    {
        parent::__construct($message, $code, $extra, $previous);
    }
}
