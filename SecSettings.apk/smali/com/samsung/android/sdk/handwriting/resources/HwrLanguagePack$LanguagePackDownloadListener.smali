.class Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;
.super Ljava/lang/Object;
.source "HwrLanguagePack.java"

# interfaces
.implements Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LanguagePackDownloadListener"
.end annotation


# instance fields
.field private mListener:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$OnDownloadListener;

.field final synthetic this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;


# virtual methods
.method public onComplete(I)V
    .registers 11

    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;

    # getter for: Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mLanguagePacks:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->access$400(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;

    invoke-interface {v0}, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;->getLanguage()Ljava/lang/String;

    move-result-object v6

    # getter for: Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " download complete = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[onComplete] mDownloadInProgress: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;

    # getter for: Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadInProgress:Z
    invoke-static {v3}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->access$800(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", mDownloadProgress: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;

    # getter for: Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadProgress:I
    invoke-static {v3}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->access$200(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_ae

    :cond_66
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;

    # getter for: Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadProgress:I
    invoke-static {v0}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->access$200(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;)I

    move-result v0

    if-eq v0, v7, :cond_100

    :cond_6e
    if-eqz p1, :cond_109

    # getter for: Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "[onComplete] failed or canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;

    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;

    # getter for: Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mServiceId:I
    invoke-static {v1}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->access$600(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;)I

    move-result v1

    # invokes: Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->createNotificationForNegative(IZI)V
    invoke-static {v0, v1, v2, p1}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->access$900(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;IZI)V

    :goto_85
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;

    # getter for: Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadProgress:I
    invoke-static {v0}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->access$200(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;)I

    move-result v0

    if-ne v0, v7, :cond_123

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;

    # getter for: Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadInProgress:Z
    invoke-static {v0}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->access$800(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;)Z

    move-result v0

    if-nez v0, :cond_12e

    :goto_95
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;

    # setter for: Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadProgress:I
    invoke-static {v0, v7}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->access$202(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;I)I

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;

    # setter for: Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadInProgress:Z
    invoke-static {v0, v2}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->access$802(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;Z)Z

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;

    # setter for: Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadListener:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;
    invoke-static {v0, v8}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->access$002(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;)Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;

    # setter for: Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadLanguageListener:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;
    invoke-static {v0, v8}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->access$1102(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;)Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;->mListener:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$OnDownloadListener;

    if-nez v0, :cond_139

    :goto_ad
    return-void

    :cond_ae
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;

    # operator++ for: Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadProgress:I
    invoke-static {v0}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->access$208(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;

    # getter for: Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadProgress:I
    invoke-static {v0}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->access$200(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;

    # getter for: Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mLanguagePacks:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->access$400(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_66

    # getter for: Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[onComplete] returned : language pack size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;

    # getter for: Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mLanguagePacks:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->access$400(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;

    # getter for: Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mLanguagePacks:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->access$400(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;

    # getter for: Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadProgress:I
    invoke-static {v1}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->access$200(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;

    invoke-interface {v0, p0}, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;->download(Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;)V

    return-void

    :cond_100
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;

    # getter for: Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadInProgress:Z
    invoke-static {v0}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->access$800(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;)Z

    move-result v0

    if-nez v0, :cond_6e

    goto :goto_ad

    :cond_109
    # getter for: Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "[onComplete] success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;

    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;

    # getter for: Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mServiceId:I
    invoke-static {v1}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->access$600(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;)I

    move-result v1

    move v3, v2

    move v4, v2

    move v5, v2

    # invokes: Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->createNotification(IZZII)V
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->access$700(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;IZZII)V

    goto/16 :goto_85

    :cond_123
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;

    # getter for: Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mLanguagePackManager:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;
    invoke-static {v0}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->access$1000(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;)Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->finishDownload(Ljava/lang/String;)V

    goto/16 :goto_95

    :cond_12e
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;

    # getter for: Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mLanguagePackManager:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;
    invoke-static {v0}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->access$1000(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;)Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->cancelDownload(Ljava/lang/String;)V

    goto/16 :goto_95

    :cond_139
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;->mListener:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$OnDownloadListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$OnDownloadListener;->onComplete(I)V

    goto/16 :goto_ad
.end method

.method public onProgress(II)V
    .registers 10

    const/16 v4, 0x64

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;

    # getter for: Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadProgress:I
    invoke-static {v0}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->access$200(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;)I

    move-result v6

    if-ltz v6, :cond_78

    :goto_b
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;

    mul-int/lit8 v1, v6, 0x64

    mul-int/lit8 v3, p1, 0x64

    div-int/2addr v3, p2

    add-int/2addr v1, v3

    iget-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;

    # getter for: Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mLanguagePacks:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->access$400(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    div-int/2addr v1, v3

    # setter for: Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mCurrentDownloadProgress:I
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->access$302(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;I)I

    # getter for: Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->access$500()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;

    # getter for: Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mLanguagePacks:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->access$400(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;

    invoke-interface {v0}, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID;->getID(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;

    # getter for: Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mCurrentDownloadProgress:I
    invoke-static {v3}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->access$300(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "%"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;

    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;

    # getter for: Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mServiceId:I
    invoke-static {v1}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->access$600(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;)I

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;

    # getter for: Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mCurrentDownloadProgress:I
    invoke-static {v3}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->access$300(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;)I

    move-result v5

    const/4 v3, 0x1

    # invokes: Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->createNotification(IZZII)V
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->access$700(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;IZZII)V

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;->mListener:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$OnDownloadListener;

    if-nez v0, :cond_7a

    :goto_77
    return-void

    :cond_78
    const/4 v6, 0x0

    goto :goto_b

    :cond_7a
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;->mListener:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$OnDownloadListener;

    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;

    # getter for: Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mCurrentDownloadProgress:I
    invoke-static {v1}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->access$300(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;)I

    move-result v1

    invoke-interface {v0, v1, v4}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$OnDownloadListener;->onProgress(II)V

    goto :goto_77
.end method