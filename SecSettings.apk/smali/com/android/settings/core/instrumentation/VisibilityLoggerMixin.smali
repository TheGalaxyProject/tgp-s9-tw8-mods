.class public Lcom/android/settings/core/instrumentation/VisibilityLoggerMixin;
.super Ljava/lang/Object;
.source "VisibilityLoggerMixin.java"

# interfaces
.implements Lcom/android/settings/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settings/core/lifecycle/events/OnResume;
.implements Lcom/android/settings/core/lifecycle/events/OnPause;
.implements Lcom/android/settings/core/lifecycle/events/OnAttach;


# instance fields
.field private final mMetricsCategory:I

.field private mMetricsFeature:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

.field private mSourceMetricsCategory:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/instrumentation/VisibilityLoggerMixin;-><init>(ILcom/android/settings/core/instrumentation/MetricsFeatureProvider;)V

    return-void
.end method

.method public constructor <init>(ILcom/android/settings/core/instrumentation/MetricsFeatureProvider;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/core/instrumentation/VisibilityLoggerMixin;->mSourceMetricsCategory:I

    iput p1, p0, Lcom/android/settings/core/instrumentation/VisibilityLoggerMixin;->mMetricsCategory:I

    iput-object p2, p0, Lcom/android/settings/core/instrumentation/VisibilityLoggerMixin;->mMetricsFeature:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .registers 3

    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/core/instrumentation/VisibilityLoggerMixin;->mMetricsFeature:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    return-void
.end method

.method public onPause()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/core/instrumentation/VisibilityLoggerMixin;->mMetricsFeature:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    if-eqz v0, :cond_10

    iget v0, p0, Lcom/android/settings/core/instrumentation/VisibilityLoggerMixin;->mMetricsCategory:I

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/settings/core/instrumentation/VisibilityLoggerMixin;->mMetricsFeature:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    iget v1, p0, Lcom/android/settings/core/instrumentation/VisibilityLoggerMixin;->mMetricsCategory:I

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;->hidden(Landroid/content/Context;I)V

    :cond_10
    return-void
.end method

.method public onResume()V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/settings/core/instrumentation/VisibilityLoggerMixin;->mMetricsFeature:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    if-eqz v0, :cond_12

    iget v0, p0, Lcom/android/settings/core/instrumentation/VisibilityLoggerMixin;->mMetricsCategory:I

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/settings/core/instrumentation/VisibilityLoggerMixin;->mMetricsFeature:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    iget v1, p0, Lcom/android/settings/core/instrumentation/VisibilityLoggerMixin;->mSourceMetricsCategory:I

    iget v2, p0, Lcom/android/settings/core/instrumentation/VisibilityLoggerMixin;->mMetricsCategory:I

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;->visible(Landroid/content/Context;II)V

    :cond_12
    return-void
.end method

.method public setSourceMetricsCategory(Landroid/app/Activity;)V
    .registers 5

    const/4 v2, 0x0

    iget v1, p0, Lcom/android/settings/core/instrumentation/VisibilityLoggerMixin;->mSourceMetricsCategory:I

    if-nez v1, :cond_7

    if-nez p1, :cond_8

    :cond_7
    return-void

    :cond_8
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_f

    return-void

    :cond_f
    const-string/jumbo v1, ":settings:source_metrics"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/core/instrumentation/VisibilityLoggerMixin;->mSourceMetricsCategory:I

    return-void
.end method
