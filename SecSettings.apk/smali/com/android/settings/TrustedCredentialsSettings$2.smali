.class Lcom/android/settings/TrustedCredentialsSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "TrustedCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TrustedCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TrustedCredentialsSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/TrustedCredentialsSettings;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$2;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$2;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings;->-get5(Lcom/android/settings/TrustedCredentialsSettings;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$2;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings;->-wrap2(Lcom/android/settings/TrustedCredentialsSettings;)V

    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$2;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/TrustedCredentialsSettings;->-set4(Lcom/android/settings/TrustedCredentialsSettings;Z)Z

    goto :goto_d
.end method