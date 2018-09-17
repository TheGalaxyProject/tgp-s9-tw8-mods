.class public Lcom/samsung/android/sdk/handwriting/resources/impl/receiver/HWRUpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HWRUpdateReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mLangPackManager:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/samsung/android/sdk/handwriting/resources/impl/receiver/HWRUpdateReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/handwriting/resources/impl/receiver/HWRUpdateReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;)V
    .registers 2

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/receiver/HWRUpdateReceiver;->mLangPackManager:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;

    return-void
.end method

.method private processUpdateFailure(Ljava/lang/String;I)V
    .registers 5

    packed-switch p2, :pswitch_data_20

    :goto_3
    return-void

    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/receiver/HWRUpdateReceiver;->mLangPackManager:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->updateResult(Ljava/lang/String;I)V

    goto :goto_3

    :pswitch_b
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/receiver/HWRUpdateReceiver;->mLangPackManager:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->updateResult(Ljava/lang/String;I)V

    goto :goto_3

    :pswitch_12
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/receiver/HWRUpdateReceiver;->mLangPackManager:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->updateResult(Ljava/lang/String;I)V

    goto :goto_3

    :pswitch_19
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/receiver/HWRUpdateReceiver;->mLangPackManager:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->updateResult(Ljava/lang/String;I)V

    goto :goto_3

    :pswitch_data_20
    .packed-switch -0x4
        :pswitch_19
        :pswitch_b
        :pswitch_12
        :pswitch_4
    .end packed-switch
.end method

.method private processUpdateSuccess(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/receiver/HWRUpdateReceiver;->mLangPackManager:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->updateResult(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/sdk/handwriting/resources/impl/api/HWRResourceManagerIntent;->EXTRA_LANG_KEY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/sdk/handwriting/resources/impl/api/HWRResourceManagerIntent;->EXTRA_UPDATE_RESULT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    sget-object v2, Lcom/samsung/android/sdk/handwriting/resources/impl/receiver/HWRUpdateReceiver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[RMUpdateReceiver::onReceive] lang = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID;->getID(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_45

    const/4 v2, -0x1

    if-ne v1, v2, :cond_49

    :cond_41
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/handwriting/resources/impl/receiver/HWRUpdateReceiver;->processUpdateFailure(Ljava/lang/String;I)V

    :goto_44
    return-void

    :cond_45
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/handwriting/resources/impl/receiver/HWRUpdateReceiver;->processUpdateSuccess(Ljava/lang/String;)V

    goto :goto_44

    :cond_49
    const/4 v2, -0x2

    if-eq v1, v2, :cond_41

    const/4 v2, -0x4

    if-eq v1, v2, :cond_41

    sget-object v2, Lcom/samsung/android/sdk/handwriting/resources/impl/receiver/HWRUpdateReceiver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown update result code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44
.end method
