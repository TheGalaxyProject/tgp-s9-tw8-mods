.class final synthetic Lcom/android/settings/applications/-$Lambda$uQiCU3kEAQBwhjE41Xw9XFOmQyY;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/settings/applications/instantapps/InstantAppButtonsController$ShowDialogDelegate;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/settings/applications/-$Lambda$uQiCU3kEAQBwhjE41Xw9XFOmQyY;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/applications/InstalledAppDetails;

    invoke-virtual {v0, p1}, Lcom/android/settings/applications/InstalledAppDetails;->lambda$-com_android_settings_applications_InstalledAppDetails_91422(I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/-$Lambda$uQiCU3kEAQBwhjE41Xw9XFOmQyY;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final showDialog(I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/applications/-$Lambda$uQiCU3kEAQBwhjE41Xw9XFOmQyY;->$m$0(I)V

    return-void
.end method
