.class Lcom/samsung/android/settings/PrivacySettings$1$1;
.super Ljava/lang/Object;
.source "PrivacySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/PrivacySettings$1;->onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/PrivacySettings$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/PrivacySettings$1;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/PrivacySettings$1$1;->this$1:Lcom/samsung/android/settings/PrivacySettings$1;

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
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_6} :catch_a5

    :try_start_6
    new-instance v4, Landroid/content/ComponentName;

    const-string/jumbo v5, "com.sec.android.easyMover.Agent"

    const-string/jumbo v6, "com.sec.android.easyMover.Agent.ServiceActivity"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v4, "com.sec.android.easyMover.Agent.action.AUTO_DOWNLOAD"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/samsung/android/settings/PrivacySettings$1$1;->this$1:Lcom/samsung/android/settings/PrivacySettings$1;

    iget-object v4, v4, Lcom/samsung/android/settings/PrivacySettings$1;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/PrivacySettings;->-wrap1(Lcom/samsung/android/settings/PrivacySettings;)Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-eqz v4, :cond_53

    const-string/jumbo v4, "PrivacySettings"

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

    iget-object v4, p0, Lcom/samsung/android/settings/PrivacySettings$1$1;->this$1:Lcom/samsung/android/settings/PrivacySettings$1;

    iget-object v4, v4, Lcom/samsung/android/settings/PrivacySettings$1;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-virtual {v4, v2}, Lcom/samsung/android/settings/PrivacySettings;->startActivity(Landroid/content/Intent;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    move-object v1, v2

    :goto_52
    return-void

    :cond_53
    const-string/jumbo v4, "samsungapps://ProductDetail/com.sec.android.easyMover"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_62
    .catch Landroid/content/ActivityNotFoundException; {:try_start_6 .. :try_end_62} :catch_11b

    const/high16 v4, 0x10000000

    :try_start_64
    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const v4, 0x8000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/samsung/android/settings/PrivacySettings$1$1;->this$1:Lcom/samsung/android/settings/PrivacySettings$1;

    iget-object v4, v4, Lcom/samsung/android/settings/PrivacySettings$1;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/PrivacySettings;->-wrap1(Lcom/samsung/android/settings/PrivacySettings;)Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-eqz v4, :cond_eb

    const-string/jumbo v4, "PrivacySettings"

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

    iget-object v4, p0, Lcom/samsung/android/settings/PrivacySettings$1$1;->this$1:Lcom/samsung/android/settings/PrivacySettings$1;

    iget-object v4, v4, Lcom/samsung/android/settings/PrivacySettings$1;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-virtual {v4, v1}, Lcom/samsung/android/settings/PrivacySettings;->startActivity(Landroid/content/Intent;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
    :try_end_a4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_64 .. :try_end_a4} :catch_a5

    goto :goto_52

    :catch_a5
    move-exception v0

    :goto_a6
    const-string/jumbo v4, "PrivacySettings"

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

    const-string/jumbo v4, "PrivacySettings"

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

    goto/16 :goto_52

    :cond_eb
    :try_start_eb
    const-string/jumbo v4, "PrivacySettings"

    const-string/jumbo v5, "null resolveActivity.try again via google play"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "market://details?id=com.sec.android.easyMover"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_103
    .catch Landroid/content/ActivityNotFoundException; {:try_start_eb .. :try_end_103} :catch_a5

    const/high16 v4, 0x10000000

    :try_start_105
    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const v4, 0x8000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/samsung/android/settings/PrivacySettings$1$1;->this$1:Lcom/samsung/android/settings/PrivacySettings$1;

    iget-object v4, v4, Lcom/samsung/android/settings/PrivacySettings$1;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-virtual {v4, v2}, Lcom/samsung/android/settings/PrivacySettings;->startActivity(Landroid/content/Intent;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
    :try_end_118
    .catch Landroid/content/ActivityNotFoundException; {:try_start_105 .. :try_end_118} :catch_11b

    move-object v1, v2

    goto/16 :goto_52

    :catch_11b
    move-exception v0

    move-object v1, v2

    goto :goto_a6
.end method
