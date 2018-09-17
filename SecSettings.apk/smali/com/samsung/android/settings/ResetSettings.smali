.class public Lcom/samsung/android/settings/ResetSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ResetSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/ResetSettings$1;
    }
.end annotation


# instance fields
.field private mContentView:Landroid/view/View;

.field private mResetSoftButton:Lcom/samsung/android/settings/widget/RoundButtonView;

.field private final mResetSoftListener:Landroid/view/View$OnClickListener;


# direct methods
.method static synthetic -wrap0(Lcom/samsung/android/settings/ResetSettings;I)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/ResetSettings;->runKeyguardConfirmation(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/ResetSettings;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/ResetSettings;->showFinalConfirmation()V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/ResetSettings;->mResetSoftButton:Lcom/samsung/android/settings/widget/RoundButtonView;

    new-instance v0, Lcom/samsung/android/settings/ResetSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/ResetSettings$1;-><init>(Lcom/samsung/android/settings/ResetSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/ResetSettings;->mResetSoftListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private establishResetState()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/settings/ResetSettings;->mContentView:Landroid/view/View;

    const v1, 0x7f0a06f7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/RoundButtonView;

    iput-object v0, p0, Lcom/samsung/android/settings/ResetSettings;->mResetSoftButton:Lcom/samsung/android/settings/widget/RoundButtonView;

    iget-object v0, p0, Lcom/samsung/android/settings/ResetSettings;->mResetSoftButton:Lcom/samsung/android/settings/widget/RoundButtonView;

    iget-object v1, p0, Lcom/samsung/android/settings/ResetSettings;->mResetSoftListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/RoundButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private runKeyguardConfirmation(I)Z
    .registers 4

    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method private showFinalConfirmation()V
    .registers 9

    const/4 v5, 0x0

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/samsung/android/settings/ResetSettingsConfirm;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f1218d6

    const/4 v7, 0x0

    move-object v1, p0

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .registers 2

    const/16 v0, 0x1234

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    const/4 v1, -0x1

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x3a

    if-eq p1, v0, :cond_d

    const/16 v0, 0x37

    if-eq p1, v0, :cond_d

    return-void

    :cond_d
    packed-switch p1, :pswitch_data_26

    :goto_10
    :pswitch_10
    return-void

    :pswitch_11
    if-ne p2, v1, :cond_17

    invoke-direct {p0}, Lcom/samsung/android/settings/ResetSettings;->showFinalConfirmation()V

    goto :goto_10

    :cond_17
    invoke-direct {p0}, Lcom/samsung/android/settings/ResetSettings;->establishResetState()V

    goto :goto_10

    :pswitch_1b
    if-ne p2, v1, :cond_21

    invoke-direct {p0}, Lcom/samsung/android/settings/ResetSettings;->showFinalConfirmation()V

    goto :goto_10

    :cond_21
    invoke-direct {p0}, Lcom/samsung/android/settings/ResetSettings;->establishResetState()V

    goto :goto_10

    nop

    :pswitch_data_26
    .packed-switch 0x37
        :pswitch_11
        :pswitch_10
        :pswitch_10
        :pswitch_1b
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6

    const v0, 0x7f0d0263

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/ResetSettings;->mContentView:Landroid/view/View;

    invoke-direct {p0}, Lcom/samsung/android/settings/ResetSettings;->establishResetState()V

    iget-object v0, p0, Lcom/samsung/android/settings/ResetSettings;->mContentView:Landroid/view/View;

    return-object v0
.end method
