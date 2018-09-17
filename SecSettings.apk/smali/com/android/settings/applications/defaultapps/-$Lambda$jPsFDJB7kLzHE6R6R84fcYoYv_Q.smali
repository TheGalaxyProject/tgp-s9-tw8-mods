.class final synthetic Lcom/android/settings/applications/defaultapps/-$Lambda$jPsFDJB7kLzHE6R6R84fcYoYv_Q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/-$Lambda$jPsFDJB7kLzHE6R6R84fcYoYv_Q;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0, p1, p2}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->lambda$-com_android_settings_applications_defaultapps_DefaultAutofillPicker_3023(Landroid/app/Activity;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/defaultapps/-$Lambda$jPsFDJB7kLzHE6R6R84fcYoYv_Q;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/defaultapps/-$Lambda$jPsFDJB7kLzHE6R6R84fcYoYv_Q;->$m$0(Landroid/content/DialogInterface;I)V

    return-void
.end method
