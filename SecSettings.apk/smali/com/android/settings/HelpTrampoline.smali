.class public Lcom/android/settings/HelpTrampoline;
.super Landroid/app/Activity;
.source "HelpTrampoline.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 10

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    :try_start_3
    invoke-virtual {p0}, Lcom/android/settings/HelpTrampoline;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v6, "android.intent.extra.TEXT"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/HelpTrampoline;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string/jumbo v6, "string"

    invoke-virtual {p0}, Lcom/android/settings/HelpTrampoline;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v3, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/HelpTrampoline;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Lcom/android/settingslib/HelpUtils;->getHelpIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_2f

    invoke-virtual {p0, v2}, Lcom/android/settings/HelpTrampoline;->startActivity(Landroid/content/Intent;)V
    :try_end_2f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_2f} :catch_33
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_2f} :catch_33

    :cond_2f
    :goto_2f
    invoke-virtual {p0}, Lcom/android/settings/HelpTrampoline;->finish()V

    return-void

    :catch_33
    move-exception v0

    const-string/jumbo v5, "HelpTrampoline"

    const-string/jumbo v6, "Failed to resolve help"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2f
.end method
