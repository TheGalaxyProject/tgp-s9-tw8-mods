.class final synthetic Lcom/android/systemui/power/-$Lambda$ukbeS6xX0pOVxqPgAJOxY1C8Mmc$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/content/DialogInterface;)V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/power/-$Lambda$ukbeS6xX0pOVxqPgAJOxY1C8Mmc$1;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-virtual {v0, p1}, Lcom/android/systemui/power/PowerNotificationWarnings;->lambda$-com_android_systemui_power_PowerNotificationWarnings_28430(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/power/-$Lambda$ukbeS6xX0pOVxqPgAJOxY1C8Mmc$1;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/systemui/power/-$Lambda$ukbeS6xX0pOVxqPgAJOxY1C8Mmc$1;->$m$0(Landroid/content/DialogInterface;)V

    return-void
.end method
