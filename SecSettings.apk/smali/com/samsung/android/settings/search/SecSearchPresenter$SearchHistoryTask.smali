.class Lcom/samsung/android/settings/search/SecSearchPresenter$SearchHistoryTask;
.super Landroid/os/AsyncTask;
.source "SecSearchPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/search/SecSearchPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchHistoryTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/search/SecSearchPresenter;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/search/SecSearchPresenter;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/search/SecSearchPresenter$SearchHistoryTask;->this$0:Lcom/samsung/android/settings/search/SecSearchPresenter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/search/SecSearchPresenter;Lcom/samsung/android/settings/search/SecSearchPresenter$SearchHistoryTask;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/search/SecSearchPresenter$SearchHistoryTask;-><init>(Lcom/samsung/android/settings/search/SecSearchPresenter;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/database/Cursor;
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchPresenter$SearchHistoryTask;->this$0:Lcom/samsung/android/settings/search/SecSearchPresenter;

    invoke-static {v0}, Lcom/samsung/android/settings/search/SecSearchPresenter;->-get0(Lcom/samsung/android/settings/search/SecSearchPresenter;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/search/model/SecIndexModel;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/search/model/SecIndexModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/search/model/SecIndexModel;->getSuggestions()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/search/SecSearchPresenter$SearchHistoryTask;->doInBackground([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/database/Cursor;)V
    .registers 5

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/settings/search/SecSearchPresenter$SearchHistoryTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/samsung/android/settings/search/SecSearchPresenter$SearchHistoryTask;->this$0:Lcom/samsung/android/settings/search/SecSearchPresenter;

    invoke-static {v1}, Lcom/samsung/android/settings/search/SecSearchPresenter;->-get3(Lcom/samsung/android/settings/search/SecSearchPresenter;)Lcom/samsung/android/settings/search/SecSearchInferface$View;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/settings/search/SecSearchInferface$View;->getSearchText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_34

    :cond_19
    iget-object v1, p0, Lcom/samsung/android/settings/search/SecSearchPresenter$SearchHistoryTask;->this$0:Lcom/samsung/android/settings/search/SecSearchPresenter;

    invoke-static {v1}, Lcom/samsung/android/settings/search/SecSearchPresenter;->-get1(Lcom/samsung/android/settings/search/SecSearchPresenter;)Lcom/samsung/android/settings/search/SearchHistoryAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/settings/search/SearchHistoryAdapter;->changeCursor(Landroid/database/Cursor;)V

    iget-object v1, p0, Lcom/samsung/android/settings/search/SecSearchPresenter$SearchHistoryTask;->this$0:Lcom/samsung/android/settings/search/SecSearchPresenter;

    invoke-static {v1}, Lcom/samsung/android/settings/search/SecSearchPresenter;->-get3(Lcom/samsung/android/settings/search/SecSearchPresenter;)Lcom/samsung/android/settings/search/SecSearchInferface$View;

    move-result-object v1

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ge v2, v0, :cond_32

    :goto_2e
    invoke-interface {v1, v0}, Lcom/samsung/android/settings/search/SecSearchInferface$View;->showHistoryLayout(Z)V

    :cond_31
    :goto_31
    return-void

    :cond_32
    const/4 v0, 0x0

    goto :goto_2e

    :cond_34
    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchPresenter$SearchHistoryTask;->this$0:Lcom/samsung/android/settings/search/SecSearchPresenter;

    invoke-static {v0}, Lcom/samsung/android/settings/search/SecSearchPresenter;->-get3(Lcom/samsung/android/settings/search/SecSearchPresenter;)Lcom/samsung/android/settings/search/SecSearchInferface$View;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/settings/search/SecSearchInferface$View;->hideHistoryLayout()V

    if-eqz p1, :cond_31

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_31
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/search/SecSearchPresenter$SearchHistoryTask;->onPostExecute(Landroid/database/Cursor;)V

    return-void
.end method
