.class public Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "UsefulFeatureHub.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$1;,
        Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$2;,
        Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$3;,
        Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$4;,
        Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$5;,
        Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;
    }
.end annotation


# static fields
.field private static SETTINGS_ADVANCEDFEATURE_CAPTURE:I

.field private static SETTINGS_ADVANCEDFEATURE_CAPTURE_SWITCH:I

.field private static SETTINGS_ADVANCEDFEATURE_DIRECTCALL:I

.field private static SETTINGS_ADVANCEDFEATURE_DIRECTCALL_SWITCH:I

.field private static SETTINGS_ADVANCEDFEATURE_DIRECTSHARE:I

.field private static SETTINGS_ADVANCEDFEATURE_DIRECTSHARE_SWITCH:I

.field private static SETTINGS_ADVANCEDFEATURE_MUTE:I

.field private static SETTINGS_ADVANCEDFEATURE_MUTE_SWITCH:I

.field private static SETTINGS_ADVANCEDFEATURE_SMARTALRET:I

.field private static SETTINGS_ADVANCEDFEATURE_SMARTALRET_SWITCH:I

.field private static SETTINGS_ADVANCEDFEATURE_SWIPE:I

.field private static SETTINGS_ADVANCEDFEATURE_SWIPETOCALLMESSAGE:I

.field private static SETTINGS_ADVANCEDFEATURE_SWIPETOCALLMESSAGE_SWITCH:I

.field private static SETTINGS_ADVANCEDFEATURE_SWIPE_SWITCH:I

.field private static mBixbyCurrentStateId:Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;

.field private mAllDisabledDialog:Landroid/app/AlertDialog;

.field private mAnimationView:Landroid/widget/ImageView;

.field mDescriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;",
            ">;"
        }
    .end annotation
.end field

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mFeatureName:Ljava/lang/String;

.field private mLoggingEvent:I

.field private mLoggingFlow:I

.field private mMotionDBItem:Ljava/lang/String;

.field private mMotionType:Ljava/lang/String;

.field private final mMultiWindowObserver:Landroid/database/ContentObserver;

.field private final mPalmSwipeToCaptureObserver:Landroid/database/ContentObserver;

.field private final mPalmSwipeToCaptureObserverInteraction:Landroid/database/ContentObserver;

.field private mSmartCaptureDisableDialog:Landroid/app/AlertDialog;

.field private final mSmartCaptureObserver:Landroid/database/ContentObserver;

.field private mSummaryView:Landroid/widget/TextView;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mTitleView:Landroid/widget/TextView;

.field private mView:Landroid/view/View;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mBixbyCurrentStateId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionDBItem:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)Lcom/android/settings/widget/SwitchBar;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)Landroid/content/ContentResolver;
    .registers 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->dismissAllDialog()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->insertlog(Z)V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    const-string/jumbo v0, "default"

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string/jumbo v0, "default"

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionDBItem:Ljava/lang/String;

    const-string/jumbo v0, "default"

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mFeatureName:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mAllDisabledDialog:Landroid/app/AlertDialog;

    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSmartCaptureDisableDialog:Landroid/app/AlertDialog;

    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mView:Landroid/view/View;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$1;-><init>(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mPalmSwipeToCaptureObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$2;-><init>(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSmartCaptureObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$3;-><init>(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mPalmSwipeToCaptureObserverInteraction:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$4;-><init>(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMultiWindowObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$5;-><init>(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private createUsefulFeatureView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8

    const v4, 0x7f0a0238

    const/16 v3, 0x8

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    :cond_a
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string/jumbo v2, "smart_capture"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e1

    const v1, 0x7f0d035b

    invoke-virtual {p1, v1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mView:Landroid/view/View;

    const v2, 0x7f0a0235

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSummaryView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mView:Landroid/view/View;

    const v2, 0x7f0a0086

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mAnimationView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    :goto_43
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_d3

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;

    iget-object v1, v1, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->key:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cf

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;

    iget v1, v1, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->title:I

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;

    iget v1, v1, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->title:I

    invoke-virtual {v2, v1}, Landroid/app/ActionBar;->setTitle(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSummaryView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;

    iget-object v1, v1, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->summary:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mAnimationView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;

    iget v1, v1, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;

    iget-object v1, v1, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->db:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionDBItem:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;

    iget-object v1, v1, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->feature:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mFeatureName:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;

    iget v1, v1, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->loggingFlow:I

    iput v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mLoggingFlow:I

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;

    iget v1, v1, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->loggingEvent:I

    iput v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mLoggingEvent:I

    :cond_cf
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_43

    :cond_d3
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-nez v1, :cond_de

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_de
    :goto_de
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mView:Landroid/view/View;

    return-object v1

    :cond_e1
    const v1, 0x7f0d02d9

    invoke-virtual {p1, v1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mView:Landroid/view/View;

    const v2, 0x7f0a07d3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mAnimationView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mView:Landroid/view/View;

    const v2, 0x7f0a07d6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSummaryView:Landroid/widget/TextView;

    const/4 v0, 0x0

    :goto_10f
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_18f

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;

    iget-object v1, v1, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->key:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18c

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;

    iget v1, v1, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->title:I

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;

    iget v1, v1, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->title:I

    invoke-virtual {v2, v1}, Landroid/app/ActionBar;->setTitle(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mAnimationView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;

    iget v1, v1, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;

    iget-object v1, v1, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->db:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionDBItem:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;

    iget-object v1, v1, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->feature:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mFeatureName:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;

    iget v1, v1, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->loggingFlow:I

    iput v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mLoggingFlow:I

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;

    iget v1, v1, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->loggingEvent:I

    iput v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mLoggingEvent:I

    :cond_18c
    add-int/lit8 v0, v0, 0x1

    goto :goto_10f

    :cond_18f
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-nez v1, :cond_19a

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_19a
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_de

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSummaryView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_de
.end method

.method private dismissAllDialog()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mAllDisabledDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mAllDisabledDialog:Landroid/app/AlertDialog;

    :cond_c
    return-void
.end method

.method private insertlog(Z)V
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string/jumbo v1, "smart_capture"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string/jumbo v1, "merged_mute_or_pause_switch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_28

    if-eqz p1, :cond_29

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "com.android.settings"

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mFeatureName:Ljava/lang/String;

    const/16 v3, 0x3e8

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_28
    :goto_28
    return-void

    :cond_29
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "com.android.settings"

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mFeatureName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_28
.end method

.method private makeTalkBackDisablePopup()V
    .registers 9

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->dismissAllDialog()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->getEnabledTalkbackName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f121c55

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v0, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f1205a0

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const v5, 0x7f121428

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    aput-object v0, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$8;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$8;-><init>(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)V

    const v5, 0x7f121c4f

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$9;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$9;-><init>(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)V

    const/high16 v5, 0x1040000

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mAllDisabledDialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mAllDisabledDialog:Landroid/app/AlertDialog;

    new-instance v4, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$10;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$10;-><init>(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private maketurnOffUniversalPopup()V
    .registers 9

    const v7, 0x7f1200ac

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->dismissAllDialog()V

    const v2, 0x7f121c55

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1205a0

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const v4, 0x7f121428

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$11;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$11;-><init>(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)V

    const v4, 0x7f121c4f

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$12;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$12;-><init>(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)V

    const/high16 v4, 0x1040000

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mAllDisabledDialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mAllDisabledDialog:Landroid/app/AlertDialog;

    new-instance v3, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$13;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$13;-><init>(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private setDescriptions()V
    .registers 13

    const v11, 0x7f121b7b

    const v10, 0x7f121228

    const v9, 0x7f121227

    const/high16 v8, 0x200000

    const-string/jumbo v6, "UsefulFeatureHub"

    const-string/jumbo v7, "setDescriptions"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;

    invoke-direct {v0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;-><init>()V

    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1120096

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    const-string/jumbo v7, "pick_up_to_call_out_switch"

    invoke-static {v6, v7}, Lcom/android/settings/Utils;->isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9f

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;

    invoke-direct {v0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;-><init>()V

    const-string/jumbo v6, "pick_up_to_call_out_switch"

    iput-object v6, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->key:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_369

    const v6, 0x7f080426

    iput v6, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    :goto_46
    const v6, 0x7f12149b

    iput v6, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->title:I

    const-string/jumbo v6, "KDI"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_65

    const-string/jumbo v6, "SBM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_388

    :cond_65
    const v6, 0x7f12149a

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->summary:Ljava/lang/String;

    :goto_6e
    const-string/jumbo v6, "motion_pick_up_to_call_out"

    iput-object v6, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->db:Ljava/lang/String;

    const-string/jumbo v6, "UFDC"

    iput-object v6, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->feature:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b019d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    sput v6, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_DIRECTCALL:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b019f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    sput v6, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_DIRECTCALL_SWITCH:I

    sget v6, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_DIRECTCALL:I

    iput v6, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->loggingFlow:I

    sget v6, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_DIRECTCALL_SWITCH:I

    iput v6, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->loggingEvent:I

    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9f
    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    const-string/jumbo v7, "pick_up_switch"

    invoke-static {v6, v7}, Lcom/android/settings/Utils;->isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_118

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;

    invoke-direct {v0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;-><init>()V

    const-string/jumbo v6, "pick_up_switch"

    iput-object v6, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->key:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_393

    const v6, 0x7f080445

    iput v6, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    :goto_bf
    const v6, 0x7f121498

    iput v6, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->title:I

    const-string/jumbo v6, "KDI"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_de

    const-string/jumbo v6, "SBM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3b2

    :cond_de
    const v6, 0x7f121497

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->summary:Ljava/lang/String;

    :goto_e7
    const-string/jumbo v6, "motion_pick_up"

    iput-object v6, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->db:Ljava/lang/String;

    const-string/jumbo v6, "UFSA"

    iput-object v6, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->feature:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b047b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    sput v6, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_SMARTALRET:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b047d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    sput v6, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_SMARTALRET_SWITCH:I

    sget v6, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_SMARTALRET:I

    iput v6, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->loggingFlow:I

    sget v6, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_SMARTALRET_SWITCH:I

    iput v6, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->loggingEvent:I

    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_118
    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    const-string/jumbo v7, "merged_mute_or_pause_switch"

    invoke-static {v6, v7}, Lcom/android/settings/Utils;->isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_19d

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;

    invoke-direct {v0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;-><init>()V

    const-string/jumbo v6, "merged_mute_or_pause_switch"

    iput-object v6, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->key:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_3bd

    const v6, 0x7f08019f

    iput v6, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    :goto_138
    const v6, 0x7f12122c

    iput v6, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->title:I

    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_14f

    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_403

    :cond_14f
    const v6, 0x7f121229

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->summary:Ljava/lang/String;

    :goto_158
    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v6

    if-eqz v6, :cond_16c

    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    invoke-static {v6, v8}, Lcom/android/settings/Utils;->isSupportMotion(Landroid/content/Context;I)Z

    move-result v6

    if-eqz v6, :cond_41b

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->summary:Ljava/lang/String;

    :cond_16c
    :goto_16c
    const-string/jumbo v6, "motion_merged_mute_pause"

    iput-object v6, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->db:Ljava/lang/String;

    const-string/jumbo v6, "UFEM"

    iput-object v6, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->feature:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b01f2

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    sput v6, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_MUTE:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b01f4

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    sput v6, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_MUTE_SWITCH:I

    sget v6, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_MUTE:I

    iput v6, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->loggingFlow:I

    sget v6, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_MUTE_SWITCH:I

    iput v6, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->loggingEvent:I

    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_19d
    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    const-string/jumbo v7, "palm_swipe_switch"

    invoke-static {v6, v7}, Lcom/android/settings/Utils;->isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1fc

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;

    invoke-direct {v0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;-><init>()V

    const-string/jumbo v6, "palm_swipe_switch"

    iput-object v6, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->key:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_423

    const v6, 0x7f080199

    iput v6, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    :goto_1bd
    const v6, 0x7f121428

    iput v6, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->title:I

    const v6, 0x7f121427

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->summary:Ljava/lang/String;

    const-string/jumbo v6, "surface_palm_swipe"

    iput-object v6, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->db:Ljava/lang/String;

    const-string/jumbo v6, "UFPC"

    iput-object v6, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->feature:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b03c3

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    sput v6, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_SWIPE:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b03c5

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    sput v6, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_SWIPE_SWITCH:I

    sget v6, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_SWIPE:I

    iput v6, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->loggingFlow:I

    sget v6, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_SWIPE_SWITCH:I

    iput v6, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->loggingEvent:I

    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1fc
    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    const-string/jumbo v7, "com.samsung.android.app.scrollcapture"

    invoke-static {v6, v7}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_212

    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    const-string/jumbo v7, "com.samsung.android.app.smartcapture"

    invoke-static {v6, v7}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_27f

    :cond_212
    new-instance v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;

    invoke-direct {v0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;-><init>()V

    const-string/jumbo v6, "smart_capture"

    iput-object v6, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->key:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_449

    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    const-string/jumbo v7, "palm_swipe_switch"

    invoke-static {v6, v7}, Lcom/android/settings/Utils;->isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_442

    const v6, 0x7f0805c8

    iput v6, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    :goto_232
    const v6, 0x7f1219ce

    iput v6, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->title:I

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v6

    if-eqz v6, :cond_4a0

    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_495

    const v6, 0x7f1219c7

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->summary:Ljava/lang/String;

    :goto_24e
    const-string/jumbo v6, "enable_smart_capture"

    iput-object v6, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->db:Ljava/lang/String;

    const-string/jumbo v6, "UFSC"

    iput-object v6, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->feature:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b047e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    sput v6, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_CAPTURE:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0480

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    sput v6, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_CAPTURE_SWITCH:I

    sget v6, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_CAPTURE:I

    iput v6, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->loggingFlow:I

    sget v6, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_CAPTURE_SWITCH:I

    iput v6, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->loggingEvent:I

    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_27f
    new-instance v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;

    invoke-direct {v0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;-><init>()V

    const-string/jumbo v6, "direct_share"

    iput-object v6, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->key:Ljava/lang/String;

    const v6, 0x7f080144

    iput v6, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    const v6, 0x7f12083e

    iput v6, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->title:I

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v6

    if-eqz v6, :cond_4ab

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f12083d

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\n\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f12083c

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->summary:Ljava/lang/String;

    :goto_2c1
    const-string/jumbo v6, "direct_share"

    iput-object v6, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->db:Ljava/lang/String;

    const-string/jumbo v6, "UFDS"

    iput-object v6, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->feature:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b01a0

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    sput v6, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_DIRECTSHARE:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b01a2

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    sput v6, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_DIRECTSHARE_SWITCH:I

    sget v6, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_DIRECTSHARE:I

    iput v6, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->loggingFlow:I

    sget v6, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_DIRECTSHARE:I

    iput v6, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->loggingEvent:I

    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;

    invoke-direct {v0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;-><init>()V

    const-string/jumbo v6, "swipe_to_call_or_send_messages"

    iput-object v6, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->key:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_4b6

    const v6, 0x7f0806c0

    iput v6, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    :goto_307
    const v6, 0x7f121b7c    # 1.9421E38f

    iput v6, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->title:I

    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v3, 0x0

    :try_start_313
    const-string/jumbo v6, "com.samsung.android.messaging"

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_31a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_313 .. :try_end_31a} :catch_4cc

    move-result-object v3

    :goto_31b
    const-string/jumbo v5, ""

    invoke-static {}, Lcom/android/settings/Utils;->isJapanDCMModel()Z

    move-result v6

    if-eqz v6, :cond_4e4

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v6

    const-string/jumbo v7, "SEC_FLOATING_FEATURE_MESSAGE_SUPPORT_ORC"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4db

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_335
    iput-object v5, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->summary:Ljava/lang/String;

    const-string/jumbo v6, "swipe_to_call_message"

    iput-object v6, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->db:Ljava/lang/String;

    const-string/jumbo v6, "UFCM"

    iput-object v6, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->feature:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0003

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    sput v6, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_SWIPETOCALLMESSAGE:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0005

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    sput v6, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_SWIPETOCALLMESSAGE_SWITCH:I

    sget v6, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_SWIPETOCALLMESSAGE:I

    iput v6, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->loggingFlow:I

    sget v6, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_SWIPETOCALLMESSAGE_SWITCH:I

    iput v6, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->loggingEvent:I

    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_369
    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_378

    const v6, 0x7f080425

    iput v6, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    goto/16 :goto_46

    :cond_378
    if-eqz v2, :cond_381

    const v6, 0x7f080427

    iput v6, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    goto/16 :goto_46

    :cond_381
    const v6, 0x7f080424

    iput v6, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    goto/16 :goto_46

    :cond_388
    const v6, 0x7f121499

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->summary:Ljava/lang/String;

    goto/16 :goto_6e

    :cond_393
    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3a2

    const v6, 0x7f080444

    iput v6, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    goto/16 :goto_bf

    :cond_3a2
    if-eqz v2, :cond_3ab

    const v6, 0x7f080446

    iput v6, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    goto/16 :goto_bf

    :cond_3ab
    const v6, 0x7f080443

    iput v6, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    goto/16 :goto_bf

    :cond_3b2
    const v6, 0x7f121496

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->summary:Ljava/lang/String;

    goto/16 :goto_e7

    :cond_3bd
    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3db

    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    invoke-static {v6, v8}, Lcom/android/settings/Utils;->isSupportMotion(Landroid/content/Context;I)Z

    move-result v6

    if-eqz v6, :cond_3d4

    const v6, 0x7f08019e

    iput v6, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    goto/16 :goto_138

    :cond_3d4
    const v6, 0x7f0801a2

    iput v6, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    goto/16 :goto_138

    :cond_3db
    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    invoke-static {v6, v8}, Lcom/android/settings/Utils;->isSupportMotion(Landroid/content/Context;I)Z

    move-result v6

    if-eqz v6, :cond_3f3

    if-eqz v2, :cond_3ec

    const v6, 0x7f0801a0

    iput v6, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    goto/16 :goto_138

    :cond_3ec
    const v6, 0x7f08019d

    iput v6, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    goto/16 :goto_138

    :cond_3f3
    if-eqz v2, :cond_3fc

    const v6, 0x7f0801a3

    iput v6, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    goto/16 :goto_138

    :cond_3fc
    const v6, 0x7f0801a1

    iput v6, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    goto/16 :goto_138

    :cond_403
    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    invoke-static {v6, v8}, Lcom/android/settings/Utils;->isSupportMotion(Landroid/content/Context;I)Z

    move-result v6

    if-eqz v6, :cond_413

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->summary:Ljava/lang/String;

    goto/16 :goto_158

    :cond_413
    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->summary:Ljava/lang/String;

    goto/16 :goto_158

    :cond_41b
    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->summary:Ljava/lang/String;

    goto/16 :goto_16c

    :cond_423
    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_432

    const v6, 0x7f080198

    iput v6, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    goto/16 :goto_1bd

    :cond_432
    if-eqz v2, :cond_43b

    const v6, 0x7f08019b

    iput v6, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    goto/16 :goto_1bd

    :cond_43b
    const v6, 0x7f08019a

    iput v6, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    goto/16 :goto_1bd

    :cond_442
    const v6, 0x7f0805c9

    iput v6, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    goto/16 :goto_232

    :cond_449
    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_46a

    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    const-string/jumbo v7, "palm_swipe_switch"

    invoke-static {v6, v7}, Lcom/android/settings/Utils;->isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_463

    const v6, 0x7f0805c5

    iput v6, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    goto/16 :goto_232

    :cond_463
    const v6, 0x7f0805c6

    iput v6, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    goto/16 :goto_232

    :cond_46a
    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    const-string/jumbo v7, "palm_swipe_switch"

    invoke-static {v6, v7}, Lcom/android/settings/Utils;->isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_485

    if-eqz v2, :cond_47e

    const v6, 0x7f0805cb

    iput v6, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    goto/16 :goto_232

    :cond_47e
    const v6, 0x7f0805ca

    iput v6, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    goto/16 :goto_232

    :cond_485
    if-eqz v2, :cond_48e

    const v6, 0x7f0805ed

    iput v6, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    goto/16 :goto_232

    :cond_48e
    const v6, 0x7f0805c7

    iput v6, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    goto/16 :goto_232

    :cond_495
    const v6, 0x7f1219c8

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->summary:Ljava/lang/String;

    goto/16 :goto_24e

    :cond_4a0
    const v6, 0x7f1219c6

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->summary:Ljava/lang/String;

    goto/16 :goto_24e

    :cond_4ab
    const v6, 0x7f12083b

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->summary:Ljava/lang/String;

    goto/16 :goto_2c1

    :cond_4b6
    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_4c5

    const v6, 0x7f0806bf

    iput v6, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    goto/16 :goto_307

    :cond_4c5
    const v6, 0x7f0806be

    iput v6, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    goto/16 :goto_307

    :catch_4cc
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const-string/jumbo v6, "UsefulFeatureHub"

    const-string/jumbo v7, "Package : com.samsung.android.messaging"

    invoke-static {v6, v7, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_31b

    :cond_4db
    const v6, 0x7f121b79

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_335

    :cond_4e4
    invoke-static {}, Lcom/android/settings/Utils;->isJapanKDIModel()Z

    move-result v6

    if-eqz v6, :cond_4f0

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_335

    :cond_4f0
    if-eqz v3, :cond_502

    iget v6, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    const v7, 0x1dcd6500

    if-lt v6, v7, :cond_502

    const v6, 0x7f121b7a

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_335

    :cond_502
    const v6, 0x7f121b78

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_335
.end method

.method private smartCaptureDisablePopup()V
    .registers 9

    const v7, 0x7f120068

    const/4 v6, 0x1

    const/4 v5, 0x0

    const v2, 0x7f121c55

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1205a0

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const v4, 0x7f1219ce

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f121c4f

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$14;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$14;-><init>(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$15;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$15;-><init>(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)V

    const/high16 v4, 0x1040000

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$16;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$16;-><init>(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSmartCaptureDisableDialog:Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .registers 2

    iget v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mLoggingFlow:I

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 7

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const-string/jumbo v2, "UsefulFeatureHub"

    const-string/jumbo v3, "onActivityCreated"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2}, Lcom/android/settings/widget/SwitchBar;->show()V

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string/jumbo v3, "swipe_to_call_or_send_messages"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionDBItem:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_57

    const/4 v1, 0x1

    :goto_37
    const-string/jumbo v2, "UsefulFeatureHub"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onActivityCreated() switchState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    return-void

    :cond_57
    const/4 v1, 0x0

    goto :goto_37

    :cond_59
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string/jumbo v3, "smart_capture"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6f

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string/jumbo v3, "multi_window_setting"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_80

    :cond_6f
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionDBItem:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_7e

    const/4 v1, 0x1

    goto :goto_37

    :cond_7e
    const/4 v1, 0x0

    goto :goto_37

    :cond_80
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionDBItem:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_8e

    const/4 v1, 0x1

    goto :goto_37

    :cond_8e
    const/4 v1, 0x0

    goto :goto_37
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 7

    const/4 v4, 0x1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->createUsefulFeatureView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string/jumbo v3, "direct_share"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3d

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mAnimationView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_3d

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mAnimationView:Landroid/widget/ImageView;

    new-instance v3, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$7;

    invoke-direct {v3, p0, v0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$7;-><init>(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;Landroid/graphics/drawable/AnimationDrawable;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    const-string/jumbo v2, "UsefulFeatureHub"

    const-string/jumbo v3, "ani.start"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string/jumbo v3, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6a

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string/jumbo v3, "multi_window_setting"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_60

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string/jumbo v3, "palm_swipe_switch"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6a

    :cond_60
    iget v2, p1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-ne v2, v4, :cond_6b

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :cond_6a
    :goto_6a
    return-void

    :cond_6b
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, v4}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    goto :goto_6a
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v1, "UsefulFeatureHub"

    const-string/jumbo v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_24

    const-string/jumbo v1, "type"

    const-string/jumbo v2, "default"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    :cond_24
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->setDescriptions()V

    new-instance v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6

    const-string/jumbo v0, "UsefulFeatureHub"

    const-string/jumbo v1, "onCreateView"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->createUsefulFeatureView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .registers 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    const-string/jumbo v0, "UsefulFeatureHub"

    const-string/jumbo v1, "onDestroyView"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    return-void
.end method

.method public onPause()V
    .registers 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    const-string/jumbo v0, "UsefulFeatureHub"

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string/jumbo v1, "palm_swipe_switch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mPalmSwipeToCaptureObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mPalmSwipeToCaptureObserverInteraction:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_2e
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string/jumbo v1, "smart_capture"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSmartCaptureObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_42
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string/jumbo v1, "smart_capture"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_63

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string/jumbo v1, "multi_window_setting"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_63

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mPalmSwipeToCaptureObserverInteraction:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_63
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string/jumbo v1, "multi_window_setting"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMultiWindowObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_77
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v1, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mBixbyCurrentStateId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .registers 13

    const/4 v11, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const-string/jumbo v7, "UsefulFeatureHub"

    const-string/jumbo v10, "onResume"

    invoke-static {v7, v10}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string/jumbo v10, "pick_up_to_call_out_switch"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12b

    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v7

    if-eqz v7, :cond_31

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_31

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->finish()V

    :cond_31
    const-string/jumbo v7, "DirectCall"

    sput-object v7, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mBixbyCurrentStateId:Ljava/lang/String;

    :cond_36
    :goto_36
    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string/jumbo v10, "palm_swipe_switch"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_21a

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    new-array v5, v8, [Ljava/lang/String;

    const-string/jumbo v7, "false"

    aput-object v7, v5, v9

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string/jumbo v10, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string/jumbo v11, "isScreenCaptureEnabled"

    invoke-static {v7, v10, v11, v5}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    const/4 v7, -0x1

    if-eq v2, v7, :cond_63

    if-eq v2, v8, :cond_63

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    :cond_63
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v10, "access_control_enabled"

    invoke-static {v7, v10, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v8, :cond_74

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    :cond_74
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_1f3

    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v7, v9}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v7, v9}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v10, "surface_palm_swipe"

    invoke-static {v7, v10, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_8e
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->isStalkBackEnabled(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_20f

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_20f

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->dismissAllDialog()V

    :cond_a7
    :goto_a7
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v10, "surface_palm_swipe"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mPalmSwipeToCaptureObserver:Landroid/database/ContentObserver;

    invoke-virtual {v7, v10, v8, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v10, "access_control_enabled"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mPalmSwipeToCaptureObserverInteraction:Landroid/database/ContentObserver;

    invoke-virtual {v7, v10, v8, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :goto_c7
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v7

    const-string/jumbo v10, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    invoke-virtual {v7, v10}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_f0

    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string/jumbo v10, "multi_window_setting"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f0

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v7, v1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-ne v7, v8, :cond_f0

    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v7, v9}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :cond_f0
    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string/jumbo v8, "direct_share"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_118

    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mAnimationView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_118

    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mAnimationView:Landroid/widget/ImageView;

    new-instance v8, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$6;

    invoke-direct {v8, p0, v0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$6;-><init>(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;Landroid/graphics/drawable/AnimationDrawable;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    const-string/jumbo v7, "UsefulFeatureHub"

    const-string/jumbo v8, "ani.start"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_118
    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v7, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    sget-object v10, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mBixbyCurrentStateId:Ljava/lang/String;

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void

    :cond_12b
    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string/jumbo v10, "pick_up_switch"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_154

    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v7

    if-eqz v7, :cond_14d

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_14d

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->finish()V

    :cond_14d
    const-string/jumbo v7, "SmartAlert"

    sput-object v7, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mBixbyCurrentStateId:Ljava/lang/String;

    goto/16 :goto_36

    :cond_154
    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string/jumbo v10, "merged_mute_or_pause_switch"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17d

    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v7

    if-eqz v7, :cond_176

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_176

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->finish()V

    :cond_176
    const-string/jumbo v7, "EasyMute"

    sput-object v7, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mBixbyCurrentStateId:Ljava/lang/String;

    goto/16 :goto_36

    :cond_17d
    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string/jumbo v10, "palm_swipe_switch"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a6

    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v7

    if-eqz v7, :cond_19f

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_19f

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->finish()V

    :cond_19f
    const-string/jumbo v7, "PalmSwipeToCapture"

    sput-object v7, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mBixbyCurrentStateId:Ljava/lang/String;

    goto/16 :goto_36

    :cond_1a6
    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string/jumbo v10, "smart_capture"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1cf

    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v7

    if-eqz v7, :cond_1c8

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_1c8

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->finish()V

    :cond_1c8
    const-string/jumbo v7, "SmartCapture"

    sput-object v7, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mBixbyCurrentStateId:Ljava/lang/String;

    goto/16 :goto_36

    :cond_1cf
    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string/jumbo v10, "direct_share"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e1

    const-string/jumbo v7, "DirectShare"

    sput-object v7, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mBixbyCurrentStateId:Ljava/lang/String;

    goto/16 :goto_36

    :cond_1e1
    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string/jumbo v10, "swipe_to_call_or_send_messages"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_36

    const-string/jumbo v7, "SwipeToCallorSendMessages"

    sput-object v7, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mBixbyCurrentStateId:Ljava/lang/String;

    goto/16 :goto_36

    :cond_1f3
    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v7, v8}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    iget-object v10, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v11, "surface_palm_swipe"

    invoke-static {v7, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_20d

    move v7, v8

    :goto_208
    invoke-virtual {v10, v7}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto/16 :goto_8e

    :cond_20d
    move v7, v9

    goto :goto_208

    :cond_20f
    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mAllDisabledDialog:Landroid/app/AlertDialog;

    if-eqz v7, :cond_a7

    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v7, v8}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto/16 :goto_a7

    :cond_21a
    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string/jumbo v10, "smart_capture"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_263

    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSmartCaptureDisableDialog:Landroid/app/AlertDialog;

    if-eqz v7, :cond_24e

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v10, "finger_magnifier"

    invoke-static {v7, v10, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_24e

    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSmartCaptureDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v11, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSmartCaptureDisableDialog:Landroid/app/AlertDialog;

    :goto_23d
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v10, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionDBItem:Ljava/lang/String;

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSmartCaptureObserver:Landroid/database/ContentObserver;

    invoke-virtual {v7, v10, v8, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto/16 :goto_c7

    :cond_24e
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v10, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionDBItem:Ljava/lang/String;

    invoke-static {v7, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_261

    const/4 v6, 0x1

    :goto_25b
    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v7, v6}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_23d

    :cond_261
    const/4 v6, 0x0

    goto :goto_25b

    :cond_263
    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string/jumbo v10, "multi_window_setting"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2b1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v10, "multi_window_enabled"

    invoke-static {v7, v10, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_297

    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v7, v9}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v7, v9}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :goto_285
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v10, "multi_window_enabled"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMultiWindowObserver:Landroid/database/ContentObserver;

    invoke-virtual {v7, v10, v8, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto/16 :goto_c7

    :cond_297
    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v7, v8}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    iget-object v10, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v11, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionDBItem:Ljava/lang/String;

    invoke-static {v7, v11, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_2af

    move v7, v8

    :goto_2ab
    invoke-virtual {v10, v7}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_285

    :cond_2af
    move v7, v9

    goto :goto_2ab

    :cond_2b1
    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string/jumbo v10, "direct_share"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2d7

    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v7, v8}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    iget-object v10, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v11, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionDBItem:Ljava/lang/String;

    invoke-static {v7, v11, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_2d5

    move v7, v8

    :goto_2d0
    invoke-virtual {v10, v7}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto/16 :goto_c7

    :cond_2d5
    move v7, v9

    goto :goto_2d0

    :cond_2d7
    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string/jumbo v10, "swipe_to_call_or_send_messages"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2fd

    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v7, v8}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    iget-object v10, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v11, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionDBItem:Ljava/lang/String;

    invoke-static {v7, v11, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_2fb

    move v7, v8

    :goto_2f6
    invoke-virtual {v10, v7}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto/16 :goto_c7

    :cond_2fb
    move v7, v9

    goto :goto_2f6

    :cond_2fd
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v10, "access_control_enabled"

    invoke-static {v7, v10, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v8, :cond_326

    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v7, v9}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v7, v9}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :goto_314
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v10, "access_control_enabled"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mPalmSwipeToCaptureObserverInteraction:Landroid/database/ContentObserver;

    invoke-virtual {v7, v10, v8, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto/16 :goto_c7

    :cond_326
    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v7, v8}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    iget-object v10, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v11, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionDBItem:Ljava/lang/String;

    invoke-static {v7, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_33e

    move v7, v8

    :goto_33a
    invoke-virtual {v10, v7}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_314

    :cond_33e
    move v7, v9

    goto :goto_33a
.end method

.method public onStop()V
    .registers 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    const-string/jumbo v0, "UsefulFeatureHub"

    const-string/jumbo v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .registers 9

    const/4 v5, 0x1

    const/4 v2, 0x0

    const-string/jumbo v1, "UsefulFeatureHub"

    const-string/jumbo v3, "onSwitchChanged"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mLoggingEvent:I

    if-eqz p2, :cond_4c

    const/16 v1, 0x3e8

    :goto_15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3, v4, v1}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    if-eqz p2, :cond_4e

    const/4 v0, 0x1

    :goto_1f
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string/jumbo v3, "palm_swipe_switch"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6e

    if-ne v0, v5, :cond_50

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isUniversalSwitchSupportMultiUserKnoxMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isUniversalSwitchEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->maketurnOffUniversalPopup()V

    :cond_4b
    :goto_4b
    return-void

    :cond_4c
    move v1, v2

    goto :goto_15

    :cond_4e
    const/4 v0, 0x0

    goto :goto_1f

    :cond_50
    if-ne v0, v5, :cond_60

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_60

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->makeTalkBackDisablePopup()V

    goto :goto_4b

    :cond_60
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "surface_palm_swipe"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0, p2}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->insertlog(Z)V

    goto :goto_4b

    :cond_6e
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string/jumbo v3, "merged_mute_or_pause_switch"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a8

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "motion_merged_mute_pause"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-nez v1, :cond_93

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "motion_overturn"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_93
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    const/high16 v2, 0x200000

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->isSupportMotion(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "surface_palm_touch"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_4b

    :cond_a8
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string/jumbo v3, "multi_window_setting"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cf

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "multi_window_enabled"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_4b

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "db_popup_view_shortcut"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0, p2}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->insertlog(Z)V

    goto/16 :goto_4b

    :cond_cf
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string/jumbo v3, "smart_capture"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_fa

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "finger_magnifier"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_ee

    if-eqz p2, :cond_ee

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->smartCaptureDisablePopup()V

    goto/16 :goto_4b

    :cond_ee
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "enable_smart_capture"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_4b

    :cond_fa
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string/jumbo v2, "swipe_to_call_or_send_messages"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_113

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionDBItem:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0, p2}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->insertlog(Z)V

    goto/16 :goto_4b

    :cond_113
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionDBItem:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0, p2}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->insertlog(Z)V

    goto/16 :goto_4b
.end method
