npx gq https://intense-doe-20.hasura.app/v1/graphql -H "X-Hasura-Admin-Secret: $HASURA_ADMIN_SECRET" --introspect > schema/schema.graphql
