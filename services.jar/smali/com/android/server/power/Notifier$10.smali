.class Lcom/android/server/power/Notifier$10;
.super Ljava/lang/Object;
.source "Notifier.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/Notifier;->onSubScreenStateChanged(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/Notifier;

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Lcom/android/server/power/Notifier;I)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/power/Notifier$10;->this$0:Lcom/android/server/power/Notifier;

    iput p2, p0, Lcom/android/server/power/Notifier$10;->val$state:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget v0, p0, Lcom/android/server/power/Notifier$10;->val$state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    const-string/jumbo v0, "PowerManagerNotifier"

    const-string/jumbo v1, "sendBroadcast SubScreen On"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    :goto_e
    return-void

    :cond_f
    iget v0, p0, Lcom/android/server/power/Notifier$10;->val$state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    const-string/jumbo v0, "PowerManagerNotifier"

    const-string/jumbo v1, "sendBroadcast SubScreen Off"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method
