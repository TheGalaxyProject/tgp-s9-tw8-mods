.class public Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;
.super Ljava/lang/Object;
.source "WifiProgressiveDisclosureMixin.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settings/core/lifecycle/events/OnCreate;
.implements Lcom/android/settings/core/lifecycle/events/OnSaveInstanceState;


# static fields
.field private static DBG:Z


# instance fields
.field private final mCollapsedPrefs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mExpandButton:Lcom/samsung/android/settings/wifi/WifiExpandPreference;

.field private final mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

.field private final mScreen:Landroid/support/v7/preference/PreferenceScreen;

.field private mTileLimit:I

.field private mUserExpanded:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/preference/PreferenceScreen;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->mCollapsedPrefs:Ljava/util/List;

    const/16 v0, 0x12c

    iput v0, p0, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->mTileLimit:I

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiExpandPreference;

    invoke-direct {v0, p1}, Lcom/samsung/android/settings/wifi/WifiExpandPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->mExpandButton:Lcom/samsung/android/settings/wifi/WifiExpandPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->mExpandButton:Lcom/samsung/android/settings/wifi/WifiExpandPreference;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/wifi/WifiExpandPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    iput-boolean p3, p0, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->mUserExpanded:Z

    return-void
.end method


# virtual methods
.method addToCollapsedList(Landroid/support/v7/preference/Preference;)V
    .registers 4
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->mCollapsedPrefs:Ljava/util/List;

    invoke-static {v1, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_c

    mul-int/lit8 v1, v0, -0x1

    add-int/lit8 v0, v1, -0x1

    :cond_c
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->mCollapsedPrefs:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public collapse(Landroid/support/v7/preference/PreferenceScreen;)V
    .registers 8

    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->mCollapsedPrefs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_15

    const-string/jumbo v3, "WifiProgressiveDisclosureMixin"

    const-string/jumbo v4, "collapsed list should ALWAYS BE EMPTY before collapsing!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    add-int/lit8 v0, v1, -0x1

    :goto_17
    iget v3, p0, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->mTileLimit:I

    if-lt v0, v3, :cond_28

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->addToCollapsedList(Landroid/support/v7/preference/Preference;)V

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_17

    :cond_28
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->mExpandButton:Lcom/samsung/android/settings/wifi/WifiExpandPreference;

    iget v4, p0, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->mTileLimit:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/wifi/WifiExpandPreference;->setOrder(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->mExpandButton:Lcom/samsung/android/settings/wifi/WifiExpandPreference;

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    sget-boolean v3, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->DBG:Z

    if-eqz v3, :cond_67

    const-string/jumbo v3, "WifiProgressiveDisclosureMixin"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Expandable List limit "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->mTileLimit:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " Order "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->mExpandButton:Lcom/samsung/android/settings/wifi/WifiExpandPreference;

    invoke-virtual {v5}, Lcom/samsung/android/settings/wifi/WifiExpandPreference;->getOrder()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_67
    return-void
.end method

.method public findPreference(Landroid/support/v7/preference/PreferenceScreen;Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;
    .registers 11

    const/4 v7, 0x0

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_8

    return-object v2

    :cond_8
    const/4 v0, 0x0

    :goto_9
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->mCollapsedPrefs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_34

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->mCollapsedPrefs:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/Preference;

    invoke-virtual {v1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_24

    return-object v1

    :cond_24
    instance-of v4, v1, Landroid/support/v7/preference/PreferenceGroup;

    if-eqz v4, :cond_31

    check-cast v1, Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v1, p2}, Landroid/support/v7/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_31

    return-object v3

    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_34
    const-string/jumbo v4, "WifiProgressiveDisclosureMixin"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Cannot find preference with key "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7
.end method

.method getCollapsedPrefs()Ljava/util/List;
    .registers 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/preference/Preference;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->mCollapsedPrefs:Ljava/util/List;

    return-object v0
.end method

.method public isCollapsed()Z
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->mCollapsedPrefs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    if-eqz p1, :cond_c

    const-string/jumbo v0, "state_user_expanded"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->mUserExpanded:Z

    :cond_c
    return-void
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .registers 13

    const/4 v6, 0x1

    const/4 v5, 0x0

    instance-of v4, p1, Lcom/samsung/android/settings/wifi/WifiExpandPreference;

    if-eqz v4, :cond_66

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    if-eqz v3, :cond_66

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/settings/SAUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/SAUtils;

    move-result-object v7

    iget-boolean v4, p0, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->mUserExpanded:Z

    if-eqz v4, :cond_46

    move v4, v5

    :goto_15
    int-to-long v8, v4

    const v4, 0x7f12179b

    const v10, 0x7f120a26

    invoke-virtual {v7, v4, v10, v8, v9}, Lcom/samsung/android/settings/SAUtils;->insertLog(IIJ)V

    iget-boolean v4, p0, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->mUserExpanded:Z

    if-nez v4, :cond_67

    sget-boolean v4, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->DBG:Z

    if-eqz v4, :cond_30

    const-string/jumbo v4, "WifiProgressiveDisclosureMixin"

    const-string/jumbo v7, "open"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->mCollapsedPrefs:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_36
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_48

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/Preference;

    invoke-virtual {v3, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_36

    :cond_46
    move v4, v6

    goto :goto_15

    :cond_48
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->mCollapsedPrefs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    iput-boolean v6, p0, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->mUserExpanded:Z

    :goto_4f
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->mExpandButton:Lcom/samsung/android/settings/wifi/WifiExpandPreference;

    iget-boolean v6, p0, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->mUserExpanded:Z

    xor-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/samsung/android/settings/wifi/WifiExpandPreference;->setDividerState(Ljava/lang/Boolean;)V

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->mContext:Landroid/content/Context;

    const/16 v7, 0x342

    invoke-virtual {v4, v6, v5, v7}, Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;->actionWithSource(Landroid/content/Context;II)V

    :cond_66
    return v5

    :cond_67
    sget-boolean v4, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->DBG:Z

    if-eqz v4, :cond_74

    const-string/jumbo v4, "WifiProgressiveDisclosureMixin"

    const-string/jumbo v6, "close"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_74
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->collapse(Landroid/support/v7/preference/PreferenceScreen;)V

    iput-boolean v5, p0, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->mUserExpanded:Z

    goto :goto_4f
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    const-string/jumbo v0, "state_user_expanded"

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->mUserExpanded:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setTileLimit(I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->mTileLimit:I

    return-void
.end method

.method public spread()V
    .registers 5

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->mCollapsedPrefs:Ljava/util/List;

    if-eqz v3, :cond_2c

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->isCollapsed()Z

    move-result v3

    if-eqz v3, :cond_2c

    if-eqz v2, :cond_2c

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->mCollapsedPrefs:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/Preference;

    invoke-virtual {v2, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_14

    :cond_24
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->mCollapsedPrefs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->mUserExpanded:Z

    :cond_2c
    return-void
.end method
