.class Lcom/android/server/power/ShutdownDialog$StatePrepare$1;
.super Ljava/lang/Thread;
.source "ShutdownDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownDialog$StatePrepare;->prepare()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/power/ShutdownDialog$StatePrepare;


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownDialog$StatePrepare;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare$1;->this$1:Lcom/android/server/power/ShutdownDialog$StatePrepare;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    const-wide/16 v2, 0x1f4

    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_c

    :goto_5
    const-string/jumbo v1, "poweroff_sound=suspend"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    return-void

    :catch_c
    move-exception v0

    const-string/jumbo v1, "ShutdownDialog"

    const-string/jumbo v2, "InterruptedException"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method
