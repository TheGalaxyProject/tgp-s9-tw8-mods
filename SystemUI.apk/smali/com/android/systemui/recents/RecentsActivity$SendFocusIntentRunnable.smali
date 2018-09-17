.class Lcom/android/systemui/recents/RecentsActivity$SendFocusIntentRunnable;
.super Ljava/lang/Object;
.source "RecentsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/RecentsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendFocusIntentRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/RecentsActivity;


# direct methods
.method private constructor <init>(Lcom/android/systemui/recents/RecentsActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/recents/RecentsActivity$SendFocusIntentRunnable;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/recents/RecentsActivity;Lcom/android/systemui/recents/RecentsActivity$SendFocusIntentRunnable;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/RecentsActivity$SendFocusIntentRunnable;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    const-string/jumbo v2, "RecentsActivity"

    const-string/jumbo v3, "Send RecentsIntent for focus"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_9
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity$SendFocusIntentRunnable;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    const-class v3, Lcom/android/systemui/recents/RecentsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x40000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v2, "update_focus"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity$SendFocusIntentRunnable;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-virtual {v2, v1}, Lcom/android/systemui/recents/RecentsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_23} :catch_24

    :goto_23
    return-void

    :catch_24
    move-exception v0

    goto :goto_23
.end method
