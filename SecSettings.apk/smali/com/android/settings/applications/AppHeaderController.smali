.class public Lcom/android/settings/applications/AppHeaderController;
.super Ljava/lang/Object;
.source "AppHeaderController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/AppHeaderController$ActionType;
    }
.end annotation


# instance fields
.field private final mAppHeader:Landroid/view/View;

.field private mAppNotifPrefIntent:Landroid/content/Intent;

.field private final mContext:Landroid/content/Context;

.field private final mFragment:Landroid/app/Fragment;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIsInstantApp:Z

.field private mLabel:Ljava/lang/CharSequence;

.field private mLeftAction:I

.field private final mMetricsCategory:I

.field private mPackageName:Ljava/lang/String;

.field private mRightAction:I

.field private mSummary:Ljava/lang/CharSequence;

.field private mUid:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Fragment;Landroid/view/View;)V
    .registers 7

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/settings/applications/AppHeaderController;->mUid:I

    iput-object p1, p0, Lcom/android/settings/applications/AppHeaderController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/applications/AppHeaderController;->mFragment:Landroid/app/Fragment;

    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;->getMetricsCategory(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/AppHeaderController;->mMetricsCategory:I

    if-eqz p3, :cond_1f

    iput-object p3, p0, Lcom/android/settings/applications/AppHeaderController;->mAppHeader:Landroid/view/View;

    :goto_1e
    return-void

    :cond_1f
    invoke-virtual {p2}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0038

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppHeaderController;->mAppHeader:Landroid/view/View;

    goto :goto_1e
.end method

.method private bindButton(Landroid/widget/ImageButton;I)V
    .registers 10

    const/4 v6, 0x0

    const/16 v5, 0x8

    const/4 v4, 0x0

    if-nez p1, :cond_7

    return-void

    :cond_7
    packed-switch p2, :pswitch_data_c8

    return-void

    :pswitch_b
    iget-object v2, p0, Lcom/android/settings/applications/AppHeaderController;->mPackageName:Ljava/lang/String;

    if-eqz v2, :cond_20

    iget-object v2, p0, Lcom/android/settings/applications/AppHeaderController;->mPackageName:Ljava/lang/String;

    const-string/jumbo v3, "os"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    iget v2, p0, Lcom/android/settings/applications/AppHeaderController;->mUid:I

    const/16 v3, -0x2710

    if-ne v2, v3, :cond_24

    :cond_20
    invoke-virtual {p1, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_23
    return-void

    :cond_24
    iget-object v2, p0, Lcom/android/settings/applications/AppHeaderController;->mFragment:Landroid/app/Fragment;

    invoke-static {v2}, Lcom/android/settings/AppHeader;->includeAppInfo(Landroid/app/Fragment;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_20

    iget-object v2, p0, Lcom/android/settings/applications/AppHeaderController;->mContext:Landroid/content/Context;

    const v3, 0x7f12020e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    const v2, 0x7f080222

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    new-instance v2, Lcom/android/settings/applications/-$Lambda$5ku_yVEfF-7sOKy4SSB3Jd8sM_w;

    invoke-direct {v2, p0}, Lcom/android/settings/applications/-$Lambda$5ku_yVEfF-7sOKy4SSB3Jd8sM_w;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_23

    :pswitch_4c
    iget-object v2, p0, Lcom/android/settings/applications/AppHeaderController;->mAppNotifPrefIntent:Landroid/content/Intent;

    if-nez v2, :cond_54

    invoke-virtual {p1, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_53
    return-void

    :cond_54
    new-instance v2, Lcom/android/settings/applications/-$Lambda$5ku_yVEfF-7sOKy4SSB3Jd8sM_w$1;

    invoke-direct {v2, p0}, Lcom/android/settings/applications/-$Lambda$5ku_yVEfF-7sOKy4SSB3Jd8sM_w$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_53

    :pswitch_60
    iget-object v2, p0, Lcom/android/settings/applications/AppHeaderController;->mAppHeader:Landroid/view/View;

    const v3, 0x7f0a009b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.APPLICATION_PREFERENCES"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/applications/AppHeaderController;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/applications/AppHeaderController;->resolveIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.sec.android.intent.action.SEC_APPLICATION_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/applications/AppHeaderController;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/applications/AppHeaderController;->resolveIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    if-nez v0, :cond_97

    if-nez v1, :cond_97

    invoke-virtual {p1, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void

    :cond_97
    if-eqz v0, :cond_a5

    new-instance v2, Lcom/android/settings/applications/-$Lambda$5ku_yVEfF-7sOKy4SSB3Jd8sM_w$2;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/applications/-$Lambda$5ku_yVEfF-7sOKy4SSB3Jd8sM_w$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_a1
    invoke-virtual {p1, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void

    :cond_a5
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "from_settings"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/applications/AppHeaderController;->mContext:Landroid/content/Context;

    const v3, 0x7f1201ca

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/android/settings/applications/-$Lambda$5ku_yVEfF-7sOKy4SSB3Jd8sM_w$3;

    invoke-direct {v2, p0, v1}, Lcom/android/settings/applications/-$Lambda$5ku_yVEfF-7sOKy4SSB3Jd8sM_w$3;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_a1

    :pswitch_c4
    invoke-virtual {p1, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void

    :pswitch_data_c8
    .packed-switch 0x0
        :pswitch_c4
        :pswitch_b
        :pswitch_60
        :pswitch_4c
    .end packed-switch
.end method

.method private resolveIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .registers 6

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/settings/applications/AppHeaderController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_24

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    return-object v1

    :cond_24
    return-object v3
.end method

.method private setText(ILjava/lang/CharSequence;)V
    .registers 5

    iget-object v1, p0, Lcom/android/settings/applications/AppHeaderController;->mAppHeader:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_18

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19

    const/16 v1, 0x8

    :goto_15
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_18
    return-void

    :cond_19
    const/4 v1, 0x0

    goto :goto_15
.end method


# virtual methods
.method public bindAppHeaderButtons()Lcom/android/settings/applications/AppHeaderController;
    .registers 5

    iget-object v2, p0, Lcom/android/settings/applications/AppHeaderController;->mAppHeader:Landroid/view/View;

    const v3, 0x7f0a0493

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/settings/applications/AppHeaderController;->mAppHeader:Landroid/view/View;

    const v3, 0x7f0a0708

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iget v2, p0, Lcom/android/settings/applications/AppHeaderController;->mLeftAction:I

    invoke-direct {p0, v0, v2}, Lcom/android/settings/applications/AppHeaderController;->bindButton(Landroid/widget/ImageButton;I)V

    iget v2, p0, Lcom/android/settings/applications/AppHeaderController;->mRightAction:I

    invoke-direct {p0, v1, v2}, Lcom/android/settings/applications/AppHeaderController;->bindButton(Landroid/widget/ImageButton;I)V

    return-object p0
.end method

.method done(Landroid/app/Activity;)Landroid/view/View;
    .registers 3
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/applications/AppHeaderController;->done(Landroid/app/Activity;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public done(Landroid/app/Activity;Z)Landroid/view/View;
    .registers 6

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/AppHeaderController;->styleActionBar(Landroid/app/Activity;)Lcom/android/settings/applications/AppHeaderController;

    iget-object v1, p0, Lcom/android/settings/applications/AppHeaderController;->mAppHeader:Landroid/view/View;

    const v2, 0x7f0a008e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_15

    iget-object v1, p0, Lcom/android/settings/applications/AppHeaderController;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_15
    iget-object v1, p0, Lcom/android/settings/applications/AppHeaderController;->mLabel:Ljava/lang/CharSequence;

    const v2, 0x7f0a0091

    invoke-direct {p0, v2, v1}, Lcom/android/settings/applications/AppHeaderController;->setText(ILjava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/applications/AppHeaderController;->mSummary:Ljava/lang/CharSequence;

    const v2, 0x7f0a0090

    invoke-direct {p0, v2, v1}, Lcom/android/settings/applications/AppHeaderController;->setText(ILjava/lang/CharSequence;)V

    iget-boolean v1, p0, Lcom/android/settings/applications/AppHeaderController;->mIsInstantApp:Z

    if-eqz v1, :cond_3c

    iget-object v1, p0, Lcom/android/settings/applications/AppHeaderController;->mAppHeader:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120e01

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a042e

    invoke-direct {p0, v2, v1}, Lcom/android/settings/applications/AppHeaderController;->setText(ILjava/lang/CharSequence;)V

    :cond_3c
    if-eqz p2, :cond_41

    invoke-virtual {p0}, Lcom/android/settings/applications/AppHeaderController;->bindAppHeaderButtons()Lcom/android/settings/applications/AppHeaderController;

    :cond_41
    iget-object v1, p0, Lcom/android/settings/applications/AppHeaderController;->mAppHeader:Landroid/view/View;

    return-object v1
.end method

.method public done(Landroid/app/Activity;Landroid/content/Context;)Lcom/android/settings/applications/LayoutPreference;
    .registers 5

    new-instance v0, Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/AppHeaderController;->done(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lcom/android/settings/applications/LayoutPreference;-><init>(Landroid/content/Context;Landroid/view/View;)V

    const/16 v1, -0x3e8

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->setOrder(I)V

    const-string/jumbo v1, "pref_app_header"

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->setKey(Ljava/lang/String;)V

    return-object v0
.end method

.method synthetic lambda$-com_android_settings_applications_AppHeaderController_10002(Landroid/content/Intent;Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/android/settings/applications/AppHeaderController;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0, p1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic lambda$-com_android_settings_applications_AppHeaderController_8223(Landroid/view/View;)V
    .registers 9

    const-class v0, Lcom/android/settings/applications/InstalledAppDetails;

    iget-object v2, p0, Lcom/android/settings/applications/AppHeaderController;->mPackageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/settings/applications/AppHeaderController;->mUid:I

    iget-object v4, p0, Lcom/android/settings/applications/AppHeaderController;->mFragment:Landroid/app/Fragment;

    iget v6, p0, Lcom/android/settings/applications/AppHeaderController;->mMetricsCategory:I

    const v1, 0x7f12020e

    const/4 v5, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/settings/applications/AppInfoBase;->startAppInfoFragment(Ljava/lang/Class;ILjava/lang/String;ILandroid/app/Fragment;II)V

    return-void
.end method

.method synthetic lambda$-com_android_settings_applications_AppHeaderController_8788(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/android/settings/applications/AppHeaderController;->mFragment:Landroid/app/Fragment;

    iget-object v1, p0, Lcom/android/settings/applications/AppHeaderController;->mAppNotifPrefIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic lambda$-com_android_settings_applications_AppHeaderController_9667(Landroid/content/Intent;Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/android/settings/applications/AppHeaderController;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0, p1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public setButtonActions(II)Lcom/android/settings/applications/AppHeaderController;
    .registers 3

    iput p1, p0, Lcom/android/settings/applications/AppHeaderController;->mLeftAction:I

    iput p2, p0, Lcom/android/settings/applications/AppHeaderController;->mRightAction:I

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/android/settings/applications/AppHeaderController;
    .registers 4

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/AppHeaderController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppHeaderController;->mIcon:Landroid/graphics/drawable/Drawable;

    :cond_12
    return-object p0
.end method

.method public setIcon(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Lcom/android/settings/applications/AppHeaderController;
    .registers 4

    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_16

    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/AppHeaderController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppHeaderController;->mIcon:Landroid/graphics/drawable/Drawable;

    :cond_16
    return-object p0
.end method

.method public setIsInstantApp(Z)Lcom/android/settings/applications/AppHeaderController;
    .registers 2

    iput-boolean p1, p0, Lcom/android/settings/applications/AppHeaderController;->mIsInstantApp:Z

    return-object p0
.end method

.method public setLabel(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Lcom/android/settings/applications/AppHeaderController;
    .registers 3

    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/applications/AppHeaderController;->mLabel:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setLabel(Ljava/lang/CharSequence;)Lcom/android/settings/applications/AppHeaderController;
    .registers 2

    iput-object p1, p0, Lcom/android/settings/applications/AppHeaderController;->mLabel:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/android/settings/applications/AppHeaderController;
    .registers 2

    iput-object p1, p0, Lcom/android/settings/applications/AppHeaderController;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public setSummary(Landroid/content/pm/PackageInfo;)Lcom/android/settings/applications/AppHeaderController;
    .registers 3

    if-eqz p1, :cond_6

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/applications/AppHeaderController;->mSummary:Ljava/lang/CharSequence;

    :cond_6
    return-object p0
.end method

.method public setSummary(Ljava/lang/CharSequence;)Lcom/android/settings/applications/AppHeaderController;
    .registers 2

    iput-object p1, p0, Lcom/android/settings/applications/AppHeaderController;->mSummary:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setUid(I)Lcom/android/settings/applications/AppHeaderController;
    .registers 2

    iput p1, p0, Lcom/android/settings/applications/AppHeaderController;->mUid:I

    return-object p0
.end method

.method public styleActionBar(Landroid/app/Activity;)Lcom/android/settings/applications/AppHeaderController;
    .registers 5

    if-nez p1, :cond_c

    const-string/jumbo v1, "AppDetailFeature"

    const-string/jumbo v2, "No activity, cannot style actionbar."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_c
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-nez v0, :cond_1c

    const-string/jumbo v1, "AppDetailFeature"

    const-string/jumbo v2, "No actionbar, cannot style actionbar."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_1c
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setElevation(F)V

    return-object p0
.end method
