<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Laravel</title>

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.bunny.net">
    <link href="https://fonts.bunny.net/css?family=figtree:400,600&display=swap" rel="stylesheet" />

    <!-- Styles -->
    <style>
        html {
            line-height: 1.5;
            font-family: Figtree, sans-serif;
        }

        body {
            background-color: black;
            color: white;
            margin: 0;
            padding: 0;
        }

        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        .logo {
            font-size: 3rem;
            font-weight: 600;
            text-transform: uppercase;
            letter-spacing: 0.5rem;
            position: relative;
            text-shadow: 0 0 10px rgba(255, 255, 255, 0.5);
        }

        .logo::after {
            content: '';
            position: absolute;
            bottom: -0.5rem;
            left: 50%;
            transform: translateX(-50%);
            width: 100%;
            height: 2px;
            background-color: white;
        }

        .logo span {
            display: inline-block;
            position: relative;
            animation: sparkle 2s infinite;
        }

        .logo span::after {
            content: '';
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            width: 10px;
            height: 10px;
            border-radius: 50%;
            background-color: rgba(255, 255, 255, 0.8);
            animation: sparkleParticle 1.5s infinite;
            box-shadow: 0 0 10px rgba(255, 255, 255, 0.8);
        }

        @keyframes sparkle {
            0% {
                transform: translateY(0);
                opacity: 1;
            }

            50% {
                transform: translateY(-10px);
                opacity: 0.5;
            }

            100% {
                transform: translateY(0);
                opacity: 1;
            }
        }

        @keyframes sparkleParticle {
            0% {
                transform: scale(1);
                opacity: 0.8;
            }

            50% {
                transform: scale(1.5);
                opacity: 0.3;
            }

            100% {
                transform: scale(1);
                opacity: 0.8;
            }
        }

        .links {
            display: flex;
            justify-content: flex-end;
            margin-top: 2rem;
        }

        .links a {
            margin-left: 1rem;
            font-weight: 600;
            text-decoration: none;
            color: white;
        }

        .links a:hover {
            color: gray;
        }
    </style>
</head>

<body class="antialiased">
    <div class="container">
        <div class="logo">Layer's <span>Salon</span></div>
        @if (Route::has('login'))
        <div class="links">
            @auth
            <a href="{{ url('/dashboard') }}">Dashboard</a>
            @else
            <a href="{{ route('login') }}">Log in</a>
            @if (Route::has('register'))
            <a href="{{ route('register') }}">Register</a>
            @endif
            @endauth
        </div>
        @endif
    </div>
</body>

</html>