.class Lcom/samsung/android/settings/CloudAccountSettings$5;
.super Ljava/lang/Object;
.source "CloudAccountSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/CloudAccountSettings;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/CloudAccountSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/CloudAccountSettings;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/CloudAccountSettings$5;->this$0:Lcom/samsung/android/settings/CloudAccountSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 10

    const/4 v1, 0x0

    :try_start_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V
    :try_end_6
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_6} :catch_9d

    :try_start_6
    new-instance v4, Landroid/content/ComponentName;

    const-string/jumbo v5, "com.sec.android.easyMover.Agent"

    const-string/jumbo v6, "com.sec.android.easyMover.Agent.ServiceActivity"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v4, "com.sec.android.easyMover.Agent.action.AUTO_DOWNLOAD"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/samsung/android/settings/CloudAccountSettings$5;->this$0:Lcom/samsung/android/settings/CloudAccountSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/CloudAccountSettings;->-wrap0(Lcom/samsung/android/settings/CloudAccountSettings;)Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-eqz v4, :cond_4f

    const-string/jumbo v4, "CloudAccountSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "easyMover resolveActivity is not null, start easyMover Agent, uri : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/settings/CloudAccountSettings$5;->this$0:Lcom/samsung/android/settings/CloudAccountSettings;

    invoke-virtual {v4, v2}, Lcom/samsung/android/settings/CloudAccountSettings;->startActivity(Landroid/content/Intent;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    move-object v1, v2

    :goto_4e
    return-void

    :cond_4f
    const-string/jumbo v4, "samsungapps://ProductDetail/com.sec.android.easyMover"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_5e
    .catch Landroid/content/ActivityNotFoundException; {:try_start_6 .. :try_end_5e} :catch_111

    const/high16 v4, 0x10000000

    :try_start_60
    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const v4, 0x8000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/samsung/android/settings/CloudAccountSettings$5;->this$0:Lcom/samsung/android/settings/CloudAccountSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/CloudAccountSettings;->-wrap0(Lcom/samsung/android/settings/CloudAccountSettings;)Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-eqz v4, :cond_e3

    const-string/jumbo v4, "CloudAccountSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startMarket resolveActivity is not null, start market service, uri : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/settings/CloudAccountSettings$5;->this$0:Lcom/samsung/android/settings/CloudAccountSettings;

    invoke-virtual {v4, v1}, Lcom/samsung/android/settings/CloudAccountSettings;->startActivity(Landroid/content/Intent;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
    :try_end_9c
    .catch Landroid/content/ActivityNotFoundException; {:try_start_60 .. :try_end_9c} :catch_9d

    goto :goto_4e

    :catch_9d
    move-exception v0

    :goto_9e
    const-string/jumbo v4, "CloudAccountSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "linkToMarket got an error, uri : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "CloudAccountSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Can not link to market, Exception e: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto/16 :goto_4e

    :cond_e3
    :try_start_e3
    const-string/jumbo v4, "CloudAccountSettings"

    const-string/jumbo v5, "null resolveActivity.try again via google play"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "market://details?id=com.sec.android.easyMover"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_fb
    .catch Landroid/content/ActivityNotFoundException; {:try_start_e3 .. :try_end_fb} :catch_9d

    const/high16 v4, 0x10000000

    :try_start_fd
    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const v4, 0x8000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/samsung/android/settings/CloudAccountSettings$5;->this$0:Lcom/samsung/android/settings/CloudAccountSettings;

    invoke-virtual {v4, v2}, Lcom/samsung/android/settings/CloudAccountSettings;->startActivity(Landroid/content/Intent;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
    :try_end_10e
    .catch Landroid/content/ActivityNotFoundException; {:try_start_fd .. :try_end_10e} :catch_111

    move-object v1, v2

    goto/16 :goto_4e

    :catch_111
    move-exception v0

    move-object v1, v2

    goto :goto_9e
.end method
