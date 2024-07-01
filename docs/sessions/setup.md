# 課題の準備をする

課題をスムーズに進めるための準備をしましょう。

## 課題

- [x] 作成した研修用のリポジトリにメンターをコラボレーターとして招待する
- [x] 作成した研修用のリポジトリの GitHub Actions の権限を「Allow all actions and reusable workflows」に設定
- [x] 作成した研修用のリポジトリの GitHub Actions のワークフローの権限を「Read and write permissions」に設定
- [x] 作成した研修用のリポジトリでプルリクエストマージ後に自動でヘッドブランチが削除されるように設定
- [x] 作成した研修用のリポジトリにルールセットを作成
  - [x] 対象のブランチはデフォルトブランチ
  - [x] 削除を許可しない
  - [x] マージ前にプルリクエスト必須
    - [x] マージ前に１人の承認を必須
    - [x] マージ前に会話の解決必須
  - [x] フォースプッシュを許可しない
- [x] 使用しているチャットツールで GitHub 通知の購読設定
  - Slackコマンド:
    - `/github subscribe ユーザー名/リポジトリ名 issues pulls reviews comments`
    - `/github unsubscribe ユーザー名/リポジトリ名 commits releases deployments workflows branches discussions`
- [x] 作成した研修用のリポジトリを `git clone [url]` して、ローカルにコピー
- [x] [fvm] をインストール
- [x] プロジェクトルートで `fvm install` コマンドを実行して対象の Flutter SDK をインストール
- [x] IDE の最新安定板をインストール
- [ ] Flutter の設定（ `fvm flutter doctor` を実行して確認）
- [ ] Android・iOS でアプリを実行
- [ ] `.github/workflows-templates` ディレクトリを `.github/workflows` にリネーム
- [ ] [review-assign.yaml] の `REVIEWERS` にメンターの GitHub のユーザー名を設定
- [ ] 作成した研修用のリポジトリのルールセットを編集（上２つの修正を行ったプルリクエストでステータスチェック完了後に対応する）
  - [ ] マージ前にステータスチェック必須
    - [ ] マージ前にブランチ最新化必須
    - [ ] ステータスチェック `flutter test` `check` を追加

## 注意事項

- `yumemi_lints` が Flutter SDK の最新バージョンをサポートおらずエラーが発生してしまう場合があります。詳しくは [Error occurs when yumemi_lints does not support the latest version of Flutter SDK] をご覧ください。

## 参考資料

- [コラボレーターを個人リポジトリに招待する]
- [リポジトリの GitHub Actions の設定を管理する]
- [ルールセットについて]
- [ステータスチェックについて]
- [GitHub + Slack]

<!-- Links -->

[fvm]: https://fvm.app/

[review-assign.yaml]: https://github.com/yumemi-inc/flutter-training-template/blob/main/.github/templates/.github/workflows-templates/review-assign.yaml#L8

[Error occurs when yumemi_lints does not support the latest version of Flutter SDK]: https://github.com/yumemi-inc/flutter-training-template/wiki/Error-occurs-when-yumemi_lints-does-not-support-the-latest-version-of-Flutter-SDK

[コラボレーターを個人リポジトリに招待する]: https://docs.github.com/ja/account-and-profile/setting-up-and-managing-your-personal-account-on-github/managing-access-to-your-personal-repositories/inviting-collaborators-to-a-personal-repository#inviting-a-collaborator-to-a-personal-repository

[リポジトリの GitHub Actions の設定を管理する]: https://docs.github.com/ja/repositories/managing-your-repositorys-settings-and-features/enabling-features-for-your-repository/managing-github-actions-settings-for-a-repository#allowing-select-actions-and-reusable-workflows-to-run

[ルールセットについて]: https://docs.github.com/ja/repositories/configuring-branches-and-merges-in-your-repository/managing-rulesets/about-rulesets

[ステータスチェックについて]: https://docs.github.com/ja/pull-requests/collaborating-with-pull-requests/collaborating-on-repositories-with-code-quality-features/about-status-checks

[GitHub + Slack]: https://slack.github.com
