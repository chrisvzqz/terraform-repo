resource "github_repository" "repo_prueba" {
  name        = "repo_prueba"
  description = "My awesome codebase"
  visibility = "public"
  auto_init = true
}

resource "github_branch" "branch" {
  repository = "repo_prueba"
  branch = "develop"
}

resource "github_repository_collaborator" "a_repo_collaborator" {
  repository = "repo_prueba"
  username   = "joacovillamauriz-1993"
  permission = "push"
}

resource "local_file" "mi-archivo" {
  content  = "Este archivo es de Christian"
  filename = "/Github/README.md"
}

resource "github_branch_protection" "main" {
  repository_id = "repo_prueba"
  pattern       = "main"
  enforce_admins = true

  required_pull_request_reviews {
    required_approving_review_count = 1
    dismiss_stale_reviews          = true
  }

  required_status_checks {
    strict   = true
    contexts = []
  }
}

resource "github_branch_protection" "develop" {
  repository_id = "repo_prueba"
  pattern       = "develop"
  enforce_admins = true

  required_pull_request_reviews {
    required_approving_review_count = 1
    dismiss_stale_reviews          = true
  }

  required_status_checks {
    strict   = true
    contexts = []
  }
}

resource "github_actions_secret" "password" {
  repository      = "repo_prueba"
  secret_name     = "password"
  value = "PasswordDePrueba123"
}

resource "github_actions_variable" "usuario" {
  repository    = "repo_prueba"
  variable_name = "usuario"
  value         = "usuario_prueba"
}

