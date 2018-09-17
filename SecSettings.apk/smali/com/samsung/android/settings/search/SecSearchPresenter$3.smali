.class Lcom/samsung/android/settings/search/SecSearchPresenter$3;
.super Ljava/lang/Object;
.source "SecSearchPresenter.java"

# interfaces
.implements Lcom/samsung/android/settings/search/SearchHistoryAdapter$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/search/SecSearchPresenter;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/search/SecSearchInferface$View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/search/SecSearchPresenter;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/search/SecSearchPresenter;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/search/SecSearchPresenter$3;->this$0:Lcom/samsung/android/settings/search/SecSearchPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemDeleted()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchPresenter$3;->this$0:Lcom/samsung/android/settings/search/SecSearchPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/search/SecSearchPresenter;->updateHistory()V

    return-void
.end method

.method public onKeywordSelected(Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v2

    if-ne v2, v5, :cond_4d

    const/4 v0, 0x1

    :goto_d
    if-eqz v0, :cond_4f

    iget-object v2, p0, Lcom/samsung/android/settings/search/SecSearchPresenter$3;->this$0:Lcom/samsung/android/settings/search/SecSearchPresenter;

    invoke-static {v2}, Lcom/samsung/android/settings/search/SecSearchPresenter;->-get3(Lcom/samsung/android/settings/search/SecSearchPresenter;)Lcom/samsung/android/settings/search/SecSearchInferface$View;

    move-result-object v3

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lcom/android/settings/Utils;->getFilteredQueryString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2, v4}, Lcom/samsung/android/settings/search/SecSearchInferface$View;->setSearchText(Ljava/lang/String;Z)V

    :goto_22
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4c

    iget-object v2, p0, Lcom/samsung/android/settings/search/SecSearchPresenter$3;->this$0:Lcom/samsung/android/settings/search/SecSearchPresenter;

    invoke-static {v2}, Lcom/samsung/android/settings/search/SecSearchPresenter;->-get0(Lcom/samsung/android/settings/search/SecSearchPresenter;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/search/SecSearchPresenter$3;->this$0:Lcom/samsung/android/settings/search/SecSearchPresenter;

    invoke-static {v3}, Lcom/samsung/android/settings/search/SecSearchPresenter;->-get0(Lcom/samsung/android/settings/search/SecSearchPresenter;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0421

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    :cond_4c
    return-void

    :cond_4d
    const/4 v0, 0x0

    goto :goto_d

    :cond_4f
    iget-object v2, p0, Lcom/samsung/android/settings/search/SecSearchPresenter$3;->this$0:Lcom/samsung/android/settings/search/SecSearchPresenter;

    invoke-static {v2}, Lcom/samsung/android/settings/search/SecSearchPresenter;->-get3(Lcom/samsung/android/settings/search/SecSearchPresenter;)Lcom/samsung/android/settings/search/SecSearchInferface$View;

    move-result-object v3

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v3, v2, v4}, Lcom/samsung/android/settings/search/SecSearchInferface$View;->setSearchText(Ljava/lang/String;Z)V

    goto :goto_22
.end method
