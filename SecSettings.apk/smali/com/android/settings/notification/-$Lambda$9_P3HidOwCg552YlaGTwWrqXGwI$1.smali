.class final synthetic Lcom/android/settings/notification/-$Lambda$9_P3HidOwCg552YlaGTwWrqXGwI$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/android/settings/notification/-$Lambda$9_P3HidOwCg552YlaGTwWrqXGwI$1;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/notification/NotificationAccessConfirmationActivity;

    invoke-virtual {v0, p1, p2}, Lcom/android/settings/notification/NotificationAccessConfirmationActivity;->lambda$-com_android_settings_notification_NotificationAccessConfirmationActivity_2895(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/-$Lambda$9_P3HidOwCg552YlaGTwWrqXGwI$1;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/-$Lambda$9_P3HidOwCg552YlaGTwWrqXGwI$1;->$m$0(Landroid/content/DialogInterface;I)V

    return-void
.end method
