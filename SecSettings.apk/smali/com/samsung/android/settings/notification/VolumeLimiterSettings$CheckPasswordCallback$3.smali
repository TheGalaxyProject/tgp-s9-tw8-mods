.class Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback$3;
.super Ljava/lang/Object;
.source "VolumeLimiterSettings.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;->showCheckPasswordDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback$3;->this$1:Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 6

    const/4 v1, 0x0

    if-eqz p2, :cond_6

    const/4 v0, 0x6

    if-ne p2, v0, :cond_d

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback$3;->this$1:Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;->-wrap0(Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;)V

    const/4 v0, 0x1

    return v0

    :cond_d
    const/4 v0, 0x5

    if-eq p2, v0, :cond_6

    return v1
.end method