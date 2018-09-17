.class public final Lcom/samsung/android/settings/guide/GuideModeHelper;
.super Ljava/lang/Object;
.source "GuideModeHelper.java"


# static fields
.field private static mIsTablet:Z


# direct methods
.method static synthetic -wrap0(Landroid/view/View;Lcom/samsung/android/settings/helpdialog/TwHelpDialog;Landroid/app/Activity;)Z
    .registers 4

    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/guide/GuideModeHelper;->placeHandPointer(Landroid/view/View;Lcom/samsung/android/settings/helpdialog/TwHelpDialog;Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/guide/GuideModeHelper;->mIsTablet:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static drawActionPointerForSwitcher(Lcom/samsung/android/settings/helpdialog/TwHelpDialog;Landroid/app/Activity;)V
    .registers 7

    if-nez p0, :cond_3

    return-void

    :cond_3
    if-eqz p1, :cond_24

    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    :goto_9
    if-eqz v0, :cond_23

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_23

    invoke-static {v2, p0, p1}, Lcom/samsung/android/settings/guide/GuideModeHelper;->placeHandPointer(Landroid/view/View;Lcom/samsung/android/settings/helpdialog/TwHelpDialog;Landroid/app/Activity;)Z

    move-result v4

    if-nez v4, :cond_23

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    new-instance v1, Lcom/samsung/android/settings/guide/GuideModeHelper$1;

    invoke-direct {v1, v2, p0, p1, v3}, Lcom/samsung/android/settings/guide/GuideModeHelper$1;-><init>(Landroid/view/View;Lcom/samsung/android/settings/helpdialog/TwHelpDialog;Landroid/app/Activity;Landroid/view/ViewTreeObserver;)V

    invoke-virtual {v3, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_23
    return-void

    :cond_24
    const/4 v0, 0x0

    goto :goto_9
.end method

.method static getGuideModeFromBundle(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_22

    const-string/jumbo v1, "settings:guide_mode"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    const-string/jumbo v1, "settings:guide_mode"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "settings:guide_is_on"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_22

    const-string/jumbo v1, "settings:guide_mode"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_22
    return-object v0
.end method

.method static getGuideModeFromIntent(Landroid/os/Bundle;Landroid/os/Bundle;)Ljava/lang/String;
    .registers 4

    if-eqz p0, :cond_10

    const-string/jumbo v1, "settings:guide_mode"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_9
    if-nez v0, :cond_f

    invoke-static {p1}, Lcom/samsung/android/settings/guide/GuideModeHelper;->getGuideModeFromBundle(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    :cond_f
    return-object v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_9
.end method

.method static init(Landroid/content/Context;)V
    .registers 2

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/guide/GuideModeHelper;->mIsTablet:Z

    return-void
.end method

.method static isGuideCompleted(Landroid/os/Bundle;)Z
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_19

    const-string/jumbo v1, "settings:guide_completed"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    const-string/jumbo v1, "settings:guide_completed"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v1, "settings:guide_completed"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_19
    return v0
.end method

.method static isGuideModeBluetooth(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string/jumbo v1, "bt"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :cond_e
    return v0
.end method

.method static isGuideModeWiFi(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string/jumbo v1, "wifi"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :cond_e
    return v0
.end method

.method static isInGuideMode(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_14

    const-string/jumbo v1, "settings:guide_is_on"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    const-string/jumbo v1, "settings:guide_is_on"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :cond_13
    :goto_13
    return v0

    :cond_14
    if-eqz p1, :cond_13

    const-string/jumbo v1, "settings:guide_is_on"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    const-string/jumbo v1, "settings:guide_is_on"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v1, "settings:guide_is_on"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_13
.end method

.method static isTablet()Z
    .registers 1

    sget-boolean v0, Lcom/samsung/android/settings/guide/GuideModeHelper;->mIsTablet:Z

    return v0
.end method

.method private static placeHandPointer(Landroid/view/View;Lcom/samsung/android/settings/helpdialog/TwHelpDialog;Landroid/app/Activity;)Z
    .registers 14

    const/4 v8, -0x1

    const v9, 0x7f0a0399

    invoke-virtual {p1, v9}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v9, 0x7f0a039b

    invoke-virtual {p1, v9}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/settings/helpdialog/TwTouchPunchView;

    const v9, 0x7f0a0396

    invoke-virtual {p1, v9}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    if-eqz p0, :cond_27

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v9

    float-to-int v8, v9

    :cond_27
    if-lez v8, :cond_a3

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    invoke-direct {v3, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v9, 0x9

    const/4 v10, 0x1

    invoke-virtual {v3, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v9, 0xa

    const/4 v10, 0x1

    invoke-virtual {v3, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const v9, 0x7f070415

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    add-int/2addr v9, v8

    iput v9, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const v9, 0x7f070416

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    iput v9, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    if-nez v2, :cond_a7

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v9, 0x7f0806aa

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    const v9, 0x7f120649

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    const v9, 0x7f0a039d

    invoke-virtual {p1, v9}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    if-eqz v4, :cond_7a

    invoke-virtual {v4, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v9, 0x7f0a0399

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setId(I)V

    :cond_7a
    :goto_7a
    if-eqz v6, :cond_8a

    invoke-virtual {v6}, Lcom/samsung/android/settings/helpdialog/TwTouchPunchView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    iput v8, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v6, v5}, Lcom/samsung/android/settings/helpdialog/TwTouchPunchView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v6}, Lcom/samsung/android/settings/helpdialog/TwTouchPunchView;->invalidate()V

    :cond_8a
    if-eqz v1, :cond_a3

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const v9, 0x7f0703f7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    sub-int v9, v8, v9

    iput v9, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1}, Landroid/widget/TextView;->invalidate()V

    :cond_a3
    if-lez v8, :cond_ae

    const/4 v9, 0x1

    :goto_a6
    return v9

    :cond_a7
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2}, Landroid/widget/ImageView;->invalidate()V

    goto :goto_7a

    :cond_ae
    const/4 v9, 0x0

    goto :goto_a6
.end method

.method static setSettingsListEnabled(ZLandroid/app/Activity;)V
    .registers 4

    instance-of v1, p1, Landroid/app/ListActivity;

    if-eqz v1, :cond_1e

    check-cast p1, Landroid/app/ListActivity;

    invoke-virtual {p1}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroid/widget/ListView;->isEnabled()Z

    move-result v1

    if-eq v1, p0, :cond_1e

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setEnabled(Z)V

    invoke-static {}, Lcom/samsung/android/settings/guide/GuideFragment;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setFocusable(Z)V

    :cond_1e
    return-void
.end method

.method static setSettingsListFocusEnabled(ZLandroid/app/Activity;)V
    .registers 4

    instance-of v1, p1, Landroid/app/ListActivity;

    if-eqz v1, :cond_23

    check-cast p1, Landroid/app/ListActivity;

    invoke-virtual {p1}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Landroid/widget/ListView;->isEnabled()Z

    move-result v1

    if-eq v1, p0, :cond_15

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setEnabled(Z)V

    :cond_15
    invoke-static {}, Lcom/samsung/android/settings/guide/GuideFragment;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_23

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFocusable(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setClickable(Z)V

    :cond_23
    return-void
.end method
