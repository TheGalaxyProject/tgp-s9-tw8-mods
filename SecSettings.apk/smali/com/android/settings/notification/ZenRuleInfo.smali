.class public Lcom/android/settings/notification/ZenRuleInfo;
.super Ljava/lang/Object;
.source "ZenRuleInfo.java"


# instance fields
.field public configurationActivity:Landroid/content/ComponentName;

.field public defaultConditionId:Landroid/net/Uri;

.field public isSystem:Z

.field public packageLabel:Ljava/lang/CharSequence;

.field public packageName:Ljava/lang/String;

.field public ruleInstanceLimit:I

.field public serviceComponent:Landroid/content/ComponentName;

.field public settingsAction:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/notification/ZenRuleInfo;->ruleInstanceLimit:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_5

    return v1

    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenRuleInfo;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_12

    :cond_11
    return v2

    :cond_12
    move-object v0, p1

    check-cast v0, Lcom/android/settings/notification/ZenRuleInfo;

    iget-boolean v3, p0, Lcom/android/settings/notification/ZenRuleInfo;->isSystem:Z

    iget-boolean v4, v0, Lcom/android/settings/notification/ZenRuleInfo;->isSystem:Z

    if-eq v3, v4, :cond_1c

    return v2

    :cond_1c
    iget v3, p0, Lcom/android/settings/notification/ZenRuleInfo;->ruleInstanceLimit:I

    iget v4, v0, Lcom/android/settings/notification/ZenRuleInfo;->ruleInstanceLimit:I

    if-eq v3, v4, :cond_23

    return v2

    :cond_23
    iget-object v3, p0, Lcom/android/settings/notification/ZenRuleInfo;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_34

    iget-object v3, p0, Lcom/android/settings/notification/ZenRuleInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/settings/notification/ZenRuleInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_38

    :cond_33
    return v2

    :cond_34
    iget-object v3, v0, Lcom/android/settings/notification/ZenRuleInfo;->packageName:Ljava/lang/String;

    if-nez v3, :cond_33

    :cond_38
    iget-object v3, p0, Lcom/android/settings/notification/ZenRuleInfo;->title:Ljava/lang/String;

    if-eqz v3, :cond_49

    iget-object v3, p0, Lcom/android/settings/notification/ZenRuleInfo;->title:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/settings/notification/ZenRuleInfo;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_4d

    :cond_48
    return v2

    :cond_49
    iget-object v3, v0, Lcom/android/settings/notification/ZenRuleInfo;->title:Ljava/lang/String;

    if-nez v3, :cond_48

    :cond_4d
    iget-object v3, p0, Lcom/android/settings/notification/ZenRuleInfo;->settingsAction:Ljava/lang/String;

    if-eqz v3, :cond_5e

    iget-object v3, p0, Lcom/android/settings/notification/ZenRuleInfo;->settingsAction:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/settings/notification/ZenRuleInfo;->settingsAction:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_62

    :cond_5d
    return v2

    :cond_5e
    iget-object v3, v0, Lcom/android/settings/notification/ZenRuleInfo;->settingsAction:Ljava/lang/String;

    if-nez v3, :cond_5d

    :cond_62
    iget-object v3, p0, Lcom/android/settings/notification/ZenRuleInfo;->configurationActivity:Landroid/content/ComponentName;

    if-eqz v3, :cond_73

    iget-object v3, p0, Lcom/android/settings/notification/ZenRuleInfo;->configurationActivity:Landroid/content/ComponentName;

    iget-object v4, v0, Lcom/android/settings/notification/ZenRuleInfo;->configurationActivity:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_77

    :cond_72
    return v2

    :cond_73
    iget-object v3, v0, Lcom/android/settings/notification/ZenRuleInfo;->configurationActivity:Landroid/content/ComponentName;

    if-nez v3, :cond_72

    :cond_77
    iget-object v3, p0, Lcom/android/settings/notification/ZenRuleInfo;->defaultConditionId:Landroid/net/Uri;

    if-eqz v3, :cond_88

    iget-object v3, p0, Lcom/android/settings/notification/ZenRuleInfo;->defaultConditionId:Landroid/net/Uri;

    iget-object v4, v0, Lcom/android/settings/notification/ZenRuleInfo;->defaultConditionId:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_8c

    :cond_87
    return v2

    :cond_88
    iget-object v3, v0, Lcom/android/settings/notification/ZenRuleInfo;->defaultConditionId:Landroid/net/Uri;

    if-nez v3, :cond_87

    :cond_8c
    iget-object v3, p0, Lcom/android/settings/notification/ZenRuleInfo;->serviceComponent:Landroid/content/ComponentName;

    if-eqz v3, :cond_9d

    iget-object v3, p0, Lcom/android/settings/notification/ZenRuleInfo;->serviceComponent:Landroid/content/ComponentName;

    iget-object v4, v0, Lcom/android/settings/notification/ZenRuleInfo;->serviceComponent:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_a1

    :cond_9c
    return v2

    :cond_9d
    iget-object v3, v0, Lcom/android/settings/notification/ZenRuleInfo;->serviceComponent:Landroid/content/ComponentName;

    if-nez v3, :cond_9c

    :cond_a1
    iget-object v3, p0, Lcom/android/settings/notification/ZenRuleInfo;->packageLabel:Ljava/lang/CharSequence;

    if-eqz v3, :cond_ae

    iget-object v1, p0, Lcom/android/settings/notification/ZenRuleInfo;->packageLabel:Ljava/lang/CharSequence;

    iget-object v2, v0, Lcom/android/settings/notification/ZenRuleInfo;->packageLabel:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_ad
    :goto_ad
    return v1

    :cond_ae
    iget-object v3, v0, Lcom/android/settings/notification/ZenRuleInfo;->packageLabel:Ljava/lang/CharSequence;

    if-eqz v3, :cond_ad

    move v1, v2

    goto :goto_ad
.end method
