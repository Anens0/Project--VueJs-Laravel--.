<?php

declare(strict_types=1);

namespace App\Contracts;

interface PackerInterface
{
    public function pack(array $payload): string;

    public function unpack(string $payload): ?array;
}
