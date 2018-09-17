.class public Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;
.super Ljava/lang/Object;
.source "ZenModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/ZenModeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SummaryBuilder"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    return-void
.end method

.method private isCategoryEnabled(Landroid/app/NotificationManager$Policy;I)Z
    .registers 5

    const/4 v0, 0x0

    iget v1, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/2addr v1, p2

    if-eqz v1, :cond_7

    const/4 v0, 0x1

    :cond_7
    return v0
.end method

.method private isEffectSuppressed(Landroid/app/NotificationManager$Policy;I)Z
    .registers 5

    const/4 v0, 0x0

    iget v1, p1, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    and-int/2addr v1, p2

    if-eqz v1, :cond_7

    const/4 v0, 0x1

    :cond_7
    return v0
.end method


# virtual methods
.method append(Ljava/lang/String;ZI)Ljava/lang/String;
    .registers 8
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    if-eqz p2, :cond_1b

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const v2, 0x7f120e87

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1b
    return-object p1
.end method

.method getAutomaticRulesSummary()Ljava/lang/String;
    .registers 6

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->getEnabledAutomaticRulesCount()I

    move-result v0

    if-nez v0, :cond_11

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v2, 0x7f122291

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_10
    return-object v1

    :cond_11
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x7f100039

    invoke-virtual {v1, v3, v0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_10
.end method

.method getEnabledAutomaticRulesCount()I
    .registers 7
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    iget-object v5, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/NotificationManager;->getAutomaticZenRules()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_32

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_15
    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_32

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AutomaticZenRule;

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_15

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_32
    return v0
.end method

.method getPrioritySettingSummary(Landroid/app/NotificationManager$Policy;)Ljava/lang/String;
    .registers 6

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v2, 0x7f12224e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v3}, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->isCategoryEnabled(Landroid/app/NotificationManager$Policy;I)Z

    move-result v1

    const v2, 0x7f122275

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->append(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v1}, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->isCategoryEnabled(Landroid/app/NotificationManager$Policy;I)Z

    move-result v1

    const v2, 0x7f122268

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->append(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-direct {p0, p1, v1}, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->isCategoryEnabled(Landroid/app/NotificationManager$Policy;I)Z

    move-result v1

    if-eqz v1, :cond_33

    iget v1, p1, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    if-nez v1, :cond_47

    const v1, 0x7f122250

    invoke-virtual {p0, v0, v3, v1}, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->append(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    :cond_33
    :goto_33
    const/16 v1, 0x8

    invoke-direct {p0, p1, v1}, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->isCategoryEnabled(Landroid/app/NotificationManager$Policy;I)Z

    move-result v1

    if-eqz v1, :cond_57

    iget v1, p1, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    if-nez v1, :cond_4f

    const v1, 0x7f12224f

    invoke-virtual {p0, v0, v3, v1}, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->append(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    :cond_46
    :goto_46
    return-object v0

    :cond_47
    const v1, 0x7f122290

    invoke-virtual {p0, v0, v3, v1}, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->append(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    goto :goto_33

    :cond_4f
    const v1, 0x7f12228f

    invoke-virtual {p0, v0, v3, v1}, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->append(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    goto :goto_46

    :cond_57
    const/16 v1, 0x10

    invoke-direct {p0, p1, v1}, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->isCategoryEnabled(Landroid/app/NotificationManager$Policy;I)Z

    move-result v1

    if-eqz v1, :cond_46

    const v1, 0x7f122277

    invoke-virtual {p0, v0, v3, v1}, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->append(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    goto :goto_46
.end method

.method getVisualSettingSummary(Landroid/app/NotificationManager$Policy;)Ljava/lang/String;
    .registers 7

    const/4 v4, 0x2

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v2, 0x7f122251

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v4}, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->isEffectSuppressed(Landroid/app/NotificationManager$Policy;I)Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-direct {p0, p1, v3}, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->isEffectSuppressed(Landroid/app/NotificationManager$Policy;I)Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v2, 0x7f122270

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_20
    :goto_20
    return-object v0

    :cond_21
    invoke-direct {p0, p1, v4}, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->isEffectSuppressed(Landroid/app/NotificationManager$Policy;I)Z

    move-result v1

    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v2, 0x7f12228e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    :cond_31
    invoke-direct {p0, p1, v3}, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->isEffectSuppressed(Landroid/app/NotificationManager$Policy;I)Z

    move-result v1

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v2, 0x7f12228b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_20
.end method
