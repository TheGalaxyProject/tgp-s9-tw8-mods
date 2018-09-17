.class Lcom/samsung/android/settings/SecurityPolicySettings$UpdateTimeBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SecurityPolicySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/SecurityPolicySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateTimeBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/SecurityPolicySettings;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/SecurityPolicySettings;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/SecurityPolicySettings$UpdateTimeBroadcastReceiver;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/SecurityPolicySettings;Lcom/samsung/android/settings/SecurityPolicySettings$UpdateTimeBroadcastReceiver;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/SecurityPolicySettings$UpdateTimeBroadcastReceiver;-><init>(Lcom/samsung/android/settings/SecurityPolicySettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    if-nez p2, :cond_c

    const-string/jumbo v1, "SecuritySettings"

    const-string/jumbo v2, "Intent is null!!"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_20

    const-string/jumbo v1, "SecuritySettings"

    const-string/jumbo v2, "Action is null!!"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_20
    const-string/jumbo v1, "com.policydm.intent.CHECKED_DATE_UPDATED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    const-string/jumbo v1, "SecuritySettings"

    const-string/jumbo v2, "Security Policy Update date is updated"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/SecurityPolicySettings$UpdateTimeBroadcastReceiver;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/SecurityPolicySettings;->-wrap3(Lcom/samsung/android/settings/SecurityPolicySettings;)V

    :cond_37
    return-void
.end method
