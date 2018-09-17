.class public Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DeviceVisibilitySettings.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings$1;,
        Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings$2;,
        Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings$3;
    }
.end annotation


# instance fields
.field private mBixbyMsgHandler:Landroid/os/Handler;

.field private mDescription:Landroid/widget/TextView;

.field private mDeviceVisibilityObserver:Landroid/database/ContentObserver;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mIsPressedSwitchBar:Z

.field private mIsPressedWithCheckingPermission:Z

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mSwitchBarChildView:Landroid/view/View;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->mBixbyMsgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->mIsPressedSwitchBar:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;)Landroid/content/ContentResolver;
    .registers 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->updateSwitchBar()V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    iput-boolean v0, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->mIsPressedSwitchBar:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->mIsPressedWithCheckingPermission:Z

    new-instance v0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings$1;-><init>(Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->mDeviceVisibilityObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings$2;-><init>(Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    new-instance v0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings$3;-><init>(Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->mBixbyMsgHandler:Landroid/os/Handler;

    return-void
.end method

.method private getMyDeviceName()Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "device_name"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_18

    invoke-virtual {p0}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "device_name"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_18
    if-nez v0, :cond_1c

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    :cond_1c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u200e"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\u200e"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private updateSwitchBar()V
    .registers 6

    const/4 v2, 0x1

    const-string/jumbo v3, "DeviceVisibilitySettings"

    const-string/jumbo v4, "updateSwitch"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityUtils;->getDBInt(Landroid/content/ContentResolver;)I

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v3, :cond_21

    iget-object v3, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-ne v1, v2, :cond_22

    :goto_1e
    invoke-virtual {v3, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :cond_21
    return-void

    :cond_22
    const/4 v2, 0x0

    goto :goto_1e
.end method


# virtual methods
.method public getMetricsCategory()I
    .registers 2

    const/16 v0, 0xc8b

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v1, "DeviceVisibilitySettings"

    const-string/jumbo v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_20

    const v1, 0x7f120816

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    :cond_20
    new-instance v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7

    const v1, 0x7f0d00de

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0934

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->mDescription:Landroid/widget/TextView;

    return-object v0
.end method

.method public onDestroyView()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    :cond_9
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    return-void
.end method

.method public onPause()V
    .registers 4

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->mDeviceVisibilityObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->mSwitchBarChildView:Landroid/view/View;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->mSwitchBarChildView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->mIsPressedWithCheckingPermission:Z

    :cond_26
    iget-object v0, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "DeviceVisibility"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .registers 8

    const/4 v6, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const-string/jumbo v3, "DeviceVisibilitySettings"

    const-string/jumbo v4, "onResume"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v3, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v3, :cond_50

    iget-object v3, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3}, Lcom/android/settings/widget/SwitchBar;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_24
    if-ge v2, v1, :cond_38

    iget-object v3, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3, v2}, Lcom/android/settings/widget/SwitchBar;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_8a

    iget-object v3, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3, v2}, Lcom/android/settings/widget/SwitchBar;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->mSwitchBarChildView:Landroid/view/View;

    :cond_38
    iget-object v3, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object v3, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->mSwitchBarChildView:Landroid/view/View;

    if-eqz v3, :cond_4b

    iget-object v3, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->mSwitchBarChildView:Landroid/view/View;

    new-instance v4, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings$4;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings$4;-><init>(Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_4b
    iget-object v3, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3}, Lcom/android/settings/widget/SwitchBar;->show()V

    :cond_50
    invoke-direct {p0}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->updateSwitchBar()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityUtils;->CONTENT_URI:Landroid/net/Uri;

    iget-object v5, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->mDeviceVisibilityObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v6, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v3, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->mDescription:Landroid/widget/TextView;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->getMyDeviceName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    const v5, 0x7f120815

    invoke-virtual {p0, v5, v4}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v6, "DeviceVisibility"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void

    :cond_8a
    add-int/lit8 v2, v2, 0x1

    goto :goto_24
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .registers 13

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string/jumbo v5, "DeviceVisibilitySettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onSwitchChanged + "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->mIsPressedSwitchBar:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/Switch;->isPressed()Z

    move-result v5

    if-nez v5, :cond_2c

    iget-boolean v5, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->mIsPressedSwitchBar:Z

    if-eqz v5, :cond_58

    :cond_2c
    const-string/jumbo v5, "DeviceVisibilitySettings"

    const-string/jumbo v8, "onSwitchChanged : isPressed || true"

    invoke-static {v5, v8}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v6, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->mIsPressedSwitchBar:Z

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0b018e

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v9, 0x7f0b0190

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    if-eqz p2, :cond_93

    const/16 v5, 0x3e8

    :goto_51
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v0, v8, v9, v5}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    :cond_58
    invoke-static {v0}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityUtils;->hasPermissions(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v0}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityUtils;->isQcFirstLaunched(Landroid/content/Context;)Z

    move-result v4

    if-eqz v2, :cond_64

    if-eqz v4, :cond_a0

    :cond_64
    if-eqz p2, :cond_a0

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v5, "DEVICE_VISIBILITY_STATE_VALUE"

    if-eqz p2, :cond_71

    move v6, v7

    :cond_71
    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v5, "com.samsung.android.oneconnect"

    const-string/jumbo v6, "com.samsung.android.oneconnect.ui.SettingsPermissionActivity"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v5, 0x4000000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v5, 0x1

    :try_start_83
    iput-boolean v5, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->mIsPressedWithCheckingPermission:Z

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->startActivity(Landroid/content/Intent;)V
    :try_end_88
    .catch Landroid/content/ActivityNotFoundException; {:try_start_83 .. :try_end_88} :catch_95

    :goto_88
    invoke-virtual {p0}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string/jumbo v6, "Settings_more"

    invoke-static {v5, v6}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityUtils;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_93
    move v5, v6

    goto :goto_51

    :catch_95
    move-exception v1

    const-string/jumbo v5, "DeviceVisibilitySettings"

    const-string/jumbo v6, "ActivityNotFoundException - SettingsPermissionActivity"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_88

    :cond_a0
    if-eqz p2, :cond_a9

    :goto_a2
    const-string/jumbo v5, "Settings_more"

    invoke-static {v0, v7, v5}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityUtils;->setDBInt(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_88

    :cond_a9
    move v7, v6

    goto :goto_a2
.end method
