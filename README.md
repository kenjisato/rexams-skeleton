# rexams-skeleton

Under construction.

## Step 1. ダウンロード

授業準備を開始するたびに，このレポジトリのファイルをダウンロードする。
展開するフォルダの名前は `科目名-年度` などがよい。ここでは `macro2020` とする。

```
git clone --depth 1 git@github.com:kenjisato/rexams-skeleton.git macro2020
cd macro2020
rm -rf .git
```

あるいは "Download ZIP" から Zip ファイルをダウンロードしてもよい。適切な場所に展開する。
ダウンロードしたディレクトリでシェルを起動しておく。


## Step 2-1. docker-compose.yml の編集

docker-compose.yml をお好みのテキストエディタで開いて下の部分，`source` のところを修正する。
内容は exams パッケージのための問題を保存しているディレクトリを指定する。type, target は修正
しなくてよい。

```
10       - type: bind
11         source: ~/Documents/Sandbox/Problems/macro
12         target: /home/rstudio/problems
```

RStudio のパスワードも変更しておこう。

```
21     environment:<
22       PASSWORD: tomato<
```

## Step 2-2. course.yml の編集

course.yml をお好みのエディタで開いて修正する。特に，`course` と `reglength` の部分を修正する。

## Step 2-3. logo.jpg の置き換え

デフォルトでは私の所属先のロゴを配置している。所属先のロゴに置き換えよう。


## Step 2-4. students.csv

学生の情報を保存するCSVファイルを適切なものに置き換える。ただし，以下の制約に注意する

- セミコロン区切りにする
- registration, name, id という3つのカラムは必須である


## Step 3-1. docker-compose up

これで準備は整ったはずなので，Docker コンテナをスタートする。

```
docker-compose up -d
```

ブラウザで <http://localhost:8787> にアクセスして，

- user: rstudio
- password: docker-compose.yml で指定したもの

でログインすれば，見慣れた RStudio の画面が現れる。

## Step 3-2. docker-compose down

コンテナを停止するときはシェルに戻って，

```
docker-compose down
```

とすればよい。

## Step 4. exams プロジェクトを開く

Step 3-2 でコンテナを停止してしまった場合は，もう一度 `docker-compose up -d` でコンテナを起動しよう。

RStudio にログインしたら，Files ペインで `exams` ディレクトリを開く。`exams.Rproj` というファイルがあるので，これをクリックする。プロジェクト内の作業が始まってワーキングディレクトリが `exams` に設定される。
