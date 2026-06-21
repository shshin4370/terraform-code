# terraform-code

PR 없이 `main` 브랜치 push만으로 GitHub Actions에서 Terraform을 실행하는 실습 저장소입니다.

## GitHub 저장소 생성

```powershell
cd C:\aws\terraform\03
gh auth status
gh repo create terraform-code --private --source . --remote origin
```

공개 저장소로 만들려면 `--private` 대신 `--public`을 사용합니다.

## 동작

```text
git push origin main
→ GitHub Actions
→ terraform init
→ terraform fmt -check
→ terraform validate
→ terraform plan
→ terraform apply
```
