module github.com/jackc/pgx/v5

go 1.21

require (
	github.com/jackc/pgpassfile v1.0.0
	github.com/jackc/pgservicefile v0.0.0-20231201235250-de7065d787a5
	github.com/jackc/puddle/v2 v2.2.1
	golang.org/x/crypto v0.17.0
	golang.org/x/text v0.14.0
)

require golang.org/x/sync v0.1.0 // indirect

// Personal fork - tracking upstream jackc/pgx for learning purposes.
// Upstream: https://github.com/jackc/pgx
//
// Notes:
//   - Studying connection pool behavior (puddle v2) and how MaxConns interacts
//     with query cancellation under load.
//   - TODO: experiment with custom type mapping for domain types.
//   - TODO: investigate pgx's default query exec mode (SimpleProtocol vs
//     ExtendedProtocol) and whether switching the default impacts performance
//     in my test workloads with many small repeated queries.
//   - NOTE (2024-01-15): bumped golang.org/x/crypto to v0.17.0 already covers
//     CVE-2023-48795 (Terrapin SSH); keeping an eye on future advisories.
//     Run `go list -m -u all` periodically to check for newer patch releases.
