.class public Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SmartStaySettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/usefulfeature/SmartStaySettings$1;,
        Lcom/samsung/android/settings/usefulfeature/SmartStaySettings$2;
    }
.end annotation


# static fields
.field private static SMART_STAY:I

.field private static SMART_STAY_ONOFF:I


# instance fields
.field private mAllDisabledDialog:Landroid/app/AlertDialog;

.field private mContext:Landroid/content/Context;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mSmartStayObserver:Landroid/database/ContentObserver;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mView:Landroid/view/View;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;)Lcom/android/settings/widget/SwitchBar;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;)Landroid/content/ContentResolver;
    .registers 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->dismissAllDialog()V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings$1;-><init>(Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->mSmartStayObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings$2;-><init>(Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private dismissAllDialog()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    :cond_c
    return-void
.end method

.method private makeTalkBackDisablePopup()V
    .registers 9

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->dismissAllDialog()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->getEnabledTalkbackName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f121c55

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v0, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f1205a0

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const v5, 0x7f120e15

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    aput-object v0, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings$7;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings$7;-><init>(Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;)V

    const v5, 0x7f121c4f

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings$8;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings$8;-><init>(Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;)V

    const/high16 v5, 0x1040000

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    new-instance v4, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings$9;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings$9;-><init>(Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private maketurnOffUniversalPopup()V
    .registers 9

    const v7, 0x7f1200ac

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->dismissAllDialog()V

    const v2, 0x7f121c55

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1205a0

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const v4, 0x7f120e15

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings$10;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings$10;-><init>(Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;)V

    const v4, 0x7f121c4f

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings$11;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings$11;-><init>(Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;)V

    const/high16 v4, 0x1040000

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    new-instance v3, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings$12;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings$12;-><init>(Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .registers 2

    const/16 v0, 0x1075

    sput v0, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->SMART_STAY:I

    sget v0, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->SMART_STAY:I

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 7

    const/4 v3, 0x0

    if-eqz p2, :cond_35

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->makeTalkBackDisablePopup()V

    return-void

    :cond_11
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isUniversalSwitchEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isUniversalSwitchSupportMultiUserKnoxMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->maketurnOffUniversalPopup()V

    return-void

    :cond_29
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "intelligent_sleep_mode"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_34
    return-void

    :cond_35
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "intelligent_sleep_mode"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v3}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings$5;-><init>(Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_34
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 10

    const/4 v7, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string/jumbo v6, "layout_inflater"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v6, 0x7f0d02da

    invoke-virtual {v2, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->getView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3d

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v6

    if-eqz v6, :cond_3d

    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->mView:Landroid/view/View;

    const v7, 0x7f0a0233

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_3d
    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->mView:Landroid/view/View;

    const v7, 0x7f0a07dd

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_54

    const v6, 0x7f080640

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_54
    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_64

    new-instance v6, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings$4;

    invoke-direct {v6, p0, v0}, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings$4;-><init>(Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;Landroid/graphics/drawable/AnimationDrawable;)V

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    :cond_64
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 9

    const/4 v4, 0x0

    const v3, 0x7f0d02da

    invoke-virtual {p1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->mView:Landroid/view/View;

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v3

    if-eqz v3, :cond_2f

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->mView:Landroid/view/View;

    const v4, 0x7f0a0233

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2f
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->mView:Landroid/view/View;

    const v4, 0x7f0a07dd

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_46

    const v3, 0x7f080640

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_46
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_56

    new-instance v3, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings$3;

    invoke-direct {v3, p0, v0}, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings$3;-><init>(Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;Landroid/graphics/drawable/AnimationDrawable;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    :cond_56
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->mView:Landroid/view/View;

    return-object v3
.end method

.method public onDestroyView()V
    .registers 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    :cond_11
    return-void
.end method

.method public onPause()V
    .registers 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->mSmartStayObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->mSmartStayObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_10
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->dismissAllDialog()V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "SmartStay"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v2

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    :cond_1a
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->mSmartStayObserver:Landroid/database/ContentObserver;

    if-eqz v2, :cond_2e

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "intelligent_sleep_mode"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->mSmartStayObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_2e
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v2, :cond_49

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "intelligent_sleep_mode"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_58

    :goto_41
    invoke-virtual {v2, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    :cond_49
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "SmartStay"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void

    :cond_58
    move v0, v1

    goto :goto_41
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .registers 9

    const/4 v1, 0x0

    if-eqz p2, :cond_49

    invoke-virtual {p1}, Landroid/widget/Switch;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->makeTalkBackDisablePopup()V

    return-void

    :cond_11
    invoke-virtual {p1}, Landroid/widget/Switch;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isUniversalSwitchEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->maketurnOffUniversalPopup()V

    return-void

    :cond_1f
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "intelligent_sleep_mode"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_2a
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0484

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->SMART_STAY_ONOFF:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget v3, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->SMART_STAY_ONOFF:I

    if-eqz p2, :cond_41

    const/16 v1, 0x3e8

    :cond_41
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    return-void

    :cond_49
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "intelligent_sleep_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings$6;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/usefulfeature/SmartStaySettings$6;-><init>(Lcom/samsung/android/settings/usefulfeature/SmartStaySettings;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2a
.end method
