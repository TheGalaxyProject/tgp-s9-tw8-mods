.class public Lcom/android/settings/gestures/DoubleTwistGestureSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "DoubleTwistGestureSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/gestures/DoubleTwistGestureSettings$1;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# direct methods
.method static synthetic -wrap0(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;)Ljava/util/List;
    .registers 3

    invoke-static {p0, p1}, Lcom/android/settings/gestures/DoubleTwistGestureSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/settings/gestures/DoubleTwistGestureSettings$1;

    invoke-direct {v0}, Lcom/android/settings/gestures/DoubleTwistGestureSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/gestures/DoubleTwistGestureSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settings/core/lifecycle/Lifecycle;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/core/PreferenceController;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/settings/gestures/DoubleTwistPreferenceController;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/gestures/DoubleTwistPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "DoubleTwistGesture"

    return-object v0
.end method

.method public getMetricsCategory()I
    .registers 2

    const/16 v0, 0x2f3

    return v0
.end method

.method protected getPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/core/PreferenceController;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/settings/gestures/DoubleTwistGestureSettings;->getLifecycle()Lcom/android/settings/core/lifecycle/Lifecycle;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/gestures/DoubleTwistGestureSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getPreferenceScreenResId()I
    .registers 2

    const v0, 0x7f15005e

    return v0
.end method
