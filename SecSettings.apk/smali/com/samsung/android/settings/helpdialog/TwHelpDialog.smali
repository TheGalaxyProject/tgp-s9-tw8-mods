.class public Lcom/samsung/android/settings/helpdialog/TwHelpDialog;
.super Landroid/app/Dialog;
.source "TwHelpDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;
    }
.end annotation


# static fields
.field private static final synthetic -com-samsung-android-settings-helpdialog-TwHelpDialog$TouchModeSwitchesValues:[I


# instance fields
.field private fPunchEvent:Z

.field private mShowWrongInputToast:Z

.field private mTouchTransparencyMode:Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;

.field private mWrongInputToast:Landroid/widget/Toast;


# direct methods
.method private static synthetic -getcom-samsung-android-settings-helpdialog-TwHelpDialog$TouchModeSwitchesValues()[I
    .registers 3

    sget-object v0, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->-com-samsung-android-settings-helpdialog-TwHelpDialog$TouchModeSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->-com-samsung-android-settings-helpdialog-TwHelpDialog$TouchModeSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;->values()[Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;->OPAQUE:Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v1}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_30

    :goto_17
    :try_start_17
    sget-object v1, Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;->OPAQUE_NO_MOVE:Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v1}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_2e

    :goto_20
    :try_start_20
    sget-object v1, Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;->TRANSPARENT:Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v1}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_2c

    :goto_29
    sput-object v0, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->-com-samsung-android-settings-helpdialog-TwHelpDialog$TouchModeSwitchesValues:[I

    return-object v0

    :catch_2c
    move-exception v1

    goto :goto_29

    :catch_2e
    move-exception v1

    goto :goto_20

    :catch_30
    move-exception v1

    goto :goto_17
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const v2, 0x7f130285

    invoke-direct {p0, p1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    sget-object v2, Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;->TRANSPARENT:Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;

    iput-object v2, p0, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->mTouchTransparencyMode:Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;

    iput-object v5, p0, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->mWrongInputToast:Landroid/widget/Toast;

    iput-boolean v4, p0, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->mShowWrongInputToast:Z

    iput-boolean v3, p0, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->fPunchEvent:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_31

    invoke-static {}, Lcom/android/settings/Utils;->isFullScreenSupported()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x400

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_2c
    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    :cond_31
    sget-object v2, Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;->TRANSPARENT:Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;

    iput-object v2, p0, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->mTouchTransparencyMode:Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;

    const v2, 0x7f12222a

    invoke-static {p1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->mWrongInputToast:Landroid/widget/Toast;

    iput-boolean v4, p0, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->mShowWrongInputToast:Z

    iput-boolean v3, p0, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->fPunchEvent:Z

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10

    const/4 v7, 0x2

    const v6, 0x7f0a03a4

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-le v2, v5, :cond_d

    return v5

    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v2

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_1d

    iput-boolean v5, p0, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->fPunchEvent:Z

    :cond_1d
    invoke-static {}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->-getcom-samsung-android-settings-helpdialog-TwHelpDialog$TouchModeSwitchesValues()[I

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->mTouchTransparencyMode:Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v3}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_a6

    invoke-virtual {p0}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_33
    :goto_33
    if-eq v0, v5, :cond_38

    const/4 v2, 0x6

    if-ne v0, v2, :cond_9b

    :cond_38
    :goto_38
    iput-boolean v4, p0, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->fPunchEvent:Z

    :cond_3a
    return v4

    :pswitch_3b
    iget-boolean v2, p0, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->fPunchEvent:Z

    if-eqz v2, :cond_5f

    invoke-virtual {p0}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    if-nez v0, :cond_53

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_33

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_33

    :cond_53
    if-ne v0, v5, :cond_33

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_33

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_33

    :cond_5f
    iget-boolean v2, p0, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->mShowWrongInputToast:Z

    if-eqz v2, :cond_33

    iget-object v2, p0, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->mWrongInputToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_33

    :pswitch_69
    iget-boolean v2, p0, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->fPunchEvent:Z

    if-eqz v2, :cond_8f

    if-eq v0, v7, :cond_8f

    invoke-virtual {p0}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    if-nez v0, :cond_83

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_33

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_33

    :cond_83
    if-ne v0, v5, :cond_33

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_33

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_33

    :cond_8f
    iget-boolean v2, p0, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->mShowWrongInputToast:Z

    if-eqz v2, :cond_33

    if-eq v0, v7, :cond_33

    iget-object v2, p0, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->mWrongInputToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_33

    :cond_9b
    const/4 v2, 0x3

    if-eq v0, v2, :cond_38

    if-eqz v0, :cond_3a

    const/4 v2, 0x5

    if-eq v0, v2, :cond_3a

    if-eq v0, v7, :cond_3a

    goto :goto_38

    :pswitch_data_a6
    .packed-switch 0x1
        :pswitch_3b
        :pswitch_69
    .end packed-switch
.end method

.method public setShowWrongInputToast(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->mShowWrongInputToast:Z

    return-void
.end method

.method public setTouchTransparencyMode(Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->mTouchTransparencyMode:Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;

    return-void
.end method
