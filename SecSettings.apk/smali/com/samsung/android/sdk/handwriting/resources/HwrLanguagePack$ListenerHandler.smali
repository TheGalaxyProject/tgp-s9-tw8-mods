.class Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$ListenerHandler;
.super Landroid/os/Handler;
.source "HwrLanguagePack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListenerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$ListenerHandler;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$ListenerHandler;-><init>(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1c

    :cond_8
    :goto_8
    return-void

    :pswitch_9
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$ListenerHandler;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;

    # getter for: Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadListener:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;
    invoke-static {v0}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->access$000(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;)Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$ListenerHandler;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;

    # getter for: Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadListener:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;
    invoke-static {v0}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->access$000(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;)Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;->onComplete(I)V

    goto :goto_8

    :pswitch_data_1c
    .packed-switch 0x3e9
        :pswitch_9
    .end packed-switch
.end method
