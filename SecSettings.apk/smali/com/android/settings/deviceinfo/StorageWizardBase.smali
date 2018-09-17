.class public abstract Lcom/android/settings/deviceinfo/StorageWizardBase;
.super Landroid/app/Activity;
.source "StorageWizardBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/StorageWizardBase$1;
    }
.end annotation


# instance fields
.field private mCustomIncludeLL:Landroid/view/ViewGroup;

.field private mCustomLL:Landroid/view/ViewGroup;

.field private mCustomNav:Landroid/view/View;

.field private mCustomNext:Landroid/widget/TextView;

.field protected mDisk:Landroid/os/storage/DiskInfo;

.field private mDivider:Landroid/view/View;

.field protected mStorage:Landroid/os/storage/StorageManager;

.field private final mStorageListener:Landroid/os/storage/StorageEventListener;

.field protected mVolume:Landroid/os/storage/VolumeInfo;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/android/settings/deviceinfo/StorageWizardBase$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/StorageWizardBase$1;-><init>(Lcom/android/settings/deviceinfo/StorageWizardBase;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mStorageListener:Landroid/os/storage/StorageEventListener;

    return-void
.end method


# virtual methods
.method protected findFirstVolume(I)Landroid/os/storage/VolumeInfo;
    .registers 7

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mStorage:Landroid/os/storage/StorageManager;

    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/VolumeInfo;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v3}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v3

    if-ne v3, p1, :cond_a

    return-object v0

    :cond_2d
    const/4 v3, 0x0

    return-object v3
.end method

.method protected getNextButton()Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mCustomNext:Landroid/widget/TextView;

    return-object v0
.end method

.method protected getProgressBar()Landroid/widget/ProgressBar;
    .registers 2

    const v0, 0x7f0a0823

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    return-object v0
.end method

.method protected getSetupWizardLayout()Lcom/android/setupwizardlib/SetupWizardLayout;
    .registers 2

    const v0, 0x7f0a07a2

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/SetupWizardLayout;

    return-object v0
.end method

.method protected getViewGroup()Landroid/view/ViewGroup;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mCustomIncludeLL:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/StorageWizardBase;->setRequestedOrientation(I)V

    const-class v2, Landroid/os/storage/StorageManager;

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    iput-object v2, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mStorage:Landroid/os/storage/StorageManager;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2a

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mStorage:Landroid/os/storage/StorageManager;

    invoke-virtual {v2, v1}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mVolume:Landroid/os/storage/VolumeInfo;

    :cond_2a
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "android.os.storage.extra.DISK_ID"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_55

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mStorage:Landroid/os/storage/StorageManager;

    invoke-virtual {v2, v0}, Landroid/os/storage/StorageManager;->findDiskById(Ljava/lang/String;)Landroid/os/storage/DiskInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mDisk:Landroid/os/storage/DiskInfo;

    :cond_43
    :goto_43
    const v2, 0x7f13017e

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/StorageWizardBase;->setTheme(I)V

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mDisk:Landroid/os/storage/DiskInfo;

    if-eqz v2, :cond_54

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mStorage:Landroid/os/storage/StorageManager;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v2, v3}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    :cond_54
    return-void

    :cond_55
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mVolume:Landroid/os/storage/VolumeInfo;

    if-eqz v2, :cond_43

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mDisk:Landroid/os/storage/DiskInfo;

    goto :goto_43
.end method

.method protected onDestroy()V
    .registers 3

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mStorage:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onNavigateNext()V
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .registers 9

    const/4 v6, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, -0x7ffeff00

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v2, v6}, Landroid/view/Window;->setStatusBarColor(I)V

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mCustomNav:Landroid/view/View;

    const/16 v4, 0x500

    invoke-virtual {v3, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    const v3, 0x7f0a0841

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/StorageWizardBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/View;->setVerticalFadingEdgeEnabled(Z)V

    invoke-virtual {v0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    invoke-virtual {v0, v3}, Landroid/view/View;->setFadingEdgeLength(I)V

    const v3, 0x7f0a084c

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/StorageWizardBase;->findViewById(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lcom/android/setupwizardlib/view/Illustration;

    if-eqz v3, :cond_4d

    const v3, 0x7f0a0853

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/StorageWizardBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v1, v3, v6, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    :cond_4d
    return-void
.end method

.method protected varargs setBodyText(I[Ljava/lang/String;)V
    .registers 5

    const v0, 0x7f0a081b

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setContentView(I)V
    .registers 9

    const v6, 0x7f0a0850

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    invoke-virtual {p0, v6}, Lcom/android/settings/deviceinfo/StorageWizardBase;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0d02eb

    invoke-virtual {v3, v4, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mCustomNav:Landroid/view/View;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mCustomNav:Landroid/view/View;

    const v4, 0x7f0a081c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mDivider:Landroid/view/View;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mCustomNav:Landroid/view/View;

    const v4, 0x7f0a0867

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mCustomNext:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mCustomNav:Landroid/view/View;

    const v4, 0x7f0a0866

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mCustomLL:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mCustomNav:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mCustomIncludeLL:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v3

    if-eqz v3, :cond_58

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mDivider:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_58
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mCustomLL:Landroid/view/ViewGroup;

    new-instance v4, Lcom/android/settings/deviceinfo/StorageWizardBase$2;

    invoke-direct {v4, p0}, Lcom/android/settings/deviceinfo/StorageWizardBase$2;-><init>(Lcom/android/settings/deviceinfo/StorageWizardBase;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "show_button_background"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_94

    const/4 v1, 0x1

    :goto_70
    if-eqz v1, :cond_7a

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mCustomLL:Landroid/view/ViewGroup;

    const v4, 0x7f080748

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    :cond_7a
    const/4 v0, 0x0

    :goto_7b
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_93

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    if-ne v3, v6, :cond_96

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mCustomNav:Landroid/view/View;

    invoke-virtual {v2, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_93
    return-void

    :cond_94
    const/4 v1, 0x0

    goto :goto_70

    :cond_96
    add-int/lit8 v0, v0, 0x1

    goto :goto_7b
.end method

.method protected setCurrentProgress(I)V
    .registers 8

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    const v0, 0x7f0a0824

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v1

    int-to-double v2, p1

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected varargs setHeaderText(I[Ljava/lang/String;)V
    .registers 5

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getSetupWizardLayout()Lcom/android/setupwizardlib/SetupWizardLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->setHeaderText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected setIllustrationType(I)V
    .registers 5

    const v2, 0x7f0800cc

    packed-switch p1, :pswitch_data_28

    :goto_6
    return-void

    :pswitch_7
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getSetupWizardLayout()Lcom/android/setupwizardlib/SetupWizardLayout;

    move-result-object v0

    const v1, 0x7f0800cf

    invoke-virtual {v0, v1, v2}, Lcom/android/setupwizardlib/SetupWizardLayout;->setIllustration(II)V

    goto :goto_6

    :pswitch_12
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getSetupWizardLayout()Lcom/android/setupwizardlib/SetupWizardLayout;

    move-result-object v0

    const v1, 0x7f0800cd

    invoke-virtual {v0, v1, v2}, Lcom/android/setupwizardlib/SetupWizardLayout;->setIllustration(II)V

    goto :goto_6

    :pswitch_1d
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getSetupWizardLayout()Lcom/android/setupwizardlib/SetupWizardLayout;

    move-result-object v0

    const v1, 0x7f0800ce

    invoke-virtual {v0, v1, v2}, Lcom/android/setupwizardlib/SetupWizardLayout;->setIllustration(II)V

    goto :goto_6

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_7
        :pswitch_12
        :pswitch_1d
    .end packed-switch
.end method

.method protected setKeepScreenOn(Z)V
    .registers 3

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getSetupWizardLayout()Lcom/android/setupwizardlib/SetupWizardLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/setupwizardlib/SetupWizardLayout;->setKeepScreenOn(Z)V

    return-void
.end method

.method protected varargs setSecondaryBodyText(I[Ljava/lang/String;)V
    .registers 5

    const v1, 0x7f0a0826

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
