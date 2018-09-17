.class Lcom/android/settings/KnoxActiveProtectionEulaActivity$1;
.super Ljava/lang/Object;
.source "KnoxActiveProtectionEulaActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/KnoxActiveProtectionEulaActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/KnoxActiveProtectionEulaActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/KnoxActiveProtectionEulaActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity$1;->this$0:Lcom/android/settings/KnoxActiveProtectionEulaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.REBOOT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity$1;->this$0:Lcom/android/settings/KnoxActiveProtectionEulaActivity;

    invoke-static {v2}, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->-get0(Lcom/android/settings/KnoxActiveProtectionEulaActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    :goto_16
    return-void

    :catch_17
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_16
.end method
