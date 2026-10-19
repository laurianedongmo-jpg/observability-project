# Telemetry demo: Fluent Bit and OpenTelemetry Collector

Requires Docker with Compose v2. Run every command from this folder.

    docker compose --profile fb up            # Part 1: Fluent Bit alone
    docker compose --profile otel up          # Part 2: OpenTelemetry Collector alone
    docker compose --profile hybrid up        # Part 3: Fluent Bit -> Collector gateway

Stop and clean up between parts:

    docker compose --profile fb --profile otel --profile hybrid down -v

See the tutorial document for the full step-by-step run and talking points.

## GitHub Codespaces

Push this folder to a GitHub repository, then Code > Codespaces > Create codespace on main.
The .devcontainer folder installs Docker inside the codespace and downloads the images for you.
