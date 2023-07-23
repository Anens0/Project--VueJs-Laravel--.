<?php

declare(strict_types=1);

namespace App\Contracts;

interface ServiceProviderInterface
{
    /**
     * @param mixed $data
     *
     * @throws \App\Exception\ContainerException
     */
    public function register($provider,$force = false): void;
}
