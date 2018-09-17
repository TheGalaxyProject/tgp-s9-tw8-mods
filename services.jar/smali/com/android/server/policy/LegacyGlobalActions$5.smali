.class Lcom/android/server/policy/LegacyGlobalActions$5;
.super Ljava/lang/Object;
.source "LegacyGlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/LegacyGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/LegacyGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/LegacyGlobalActions;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions$5;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8

    const/4 v4, 0x0

    invoke-static {v4}, Lcom/android/server/policy/LegacyGlobalActions;->-set17(Z)Z

    invoke-static {}, Lcom/android/server/policy/LegacyGlobalActions;->-get64()Z

    move-result v0

    if-nez v0, :cond_2a

    invoke-static {}, Lcom/android/server/policy/LegacyGlobalActions;->-get67()Z

    move-result v0

    if-nez v0, :cond_2e

    invoke-static {}, Lcom/android/server/policy/LegacyGlobalActions;->-get63()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_16
    invoke-static {v1}, Lcom/android/server/policy/LegacyGlobalActions;->-set19(Z)Z
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_2b

    monitor-exit v0

    :goto_1a
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$5;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/LegacyGlobalActions;->-wrap24(Lcom/android/server/policy/LegacyGlobalActions;)V

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$5;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/LegacyGlobalActions;->-get24(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2a
    return-void

    :catchall_2b
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_2e
    invoke-static {v4}, Lcom/android/server/policy/LegacyGlobalActions;->-set20(Z)Z

    goto :goto_1a
.end method
