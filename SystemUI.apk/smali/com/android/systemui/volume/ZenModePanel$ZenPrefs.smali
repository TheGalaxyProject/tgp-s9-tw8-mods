.class final Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;
.super Ljava/lang/Object;
.source "ZenModePanel.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/ZenModePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ZenPrefs"
.end annotation


# instance fields
.field private mConfirmedAlarmIntroduction:Z

.field private mConfirmedPriorityIntroduction:Z

.field private mConfirmedSilenceIntroduction:Z

.field private mMinuteIndex:I

.field private final mNoneDangerousThreshold:I

.field private mNoneSelected:I

.field final synthetic this$0:Lcom/android/systemui/volume/ZenModePanel;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->mConfirmedAlarmIntroduction:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->mConfirmedPriorityIntroduction:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->mConfirmedSilenceIntroduction:Z

    return v0
.end method

.method private constructor <init>(Lcom/android/systemui/volume/ZenModePanel;)V
    .registers 4

    iput-object p1, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/systemui/volume/ZenModePanel;->-get3(Lcom/android/systemui/volume/ZenModePanel;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b007c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->mNoneDangerousThreshold:I

    invoke-static {p1}, Lcom/android/systemui/volume/ZenModePanel;->-get3(Lcom/android/systemui/volume/ZenModePanel;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/systemui/Prefs;->registerListener(Landroid/content/Context;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->updateMinuteIndex()V

    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->updateNoneSelected()V

    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->updateConfirmedPriorityIntroduction()V

    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->updateConfirmedSilenceIntroduction()V

    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->updateConfirmedAlarmIntroduction()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/volume/ZenModePanel;Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;-><init>(Lcom/android/systemui/volume/ZenModePanel;)V

    return-void
.end method

.method private clampIndex(I)I
    .registers 4

    invoke-static {}, Lcom/android/systemui/volume/ZenModePanel;->-get2()[I

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-static {p1, v1, v0}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    return v0
.end method

.method private clampNoneSelected(I)I
    .registers 4

    const/4 v0, 0x0

    const v1, 0x7fffffff

    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    return v0
.end method

.method private updateConfirmedAlarmIntroduction()V
    .registers 5

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    invoke-static {v1}, Lcom/android/systemui/volume/ZenModePanel;->-get3(Lcom/android/systemui/volume/ZenModePanel;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "DndConfirmedAlarmIntroduction"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->mConfirmedAlarmIntroduction:Z

    if-ne v0, v1, :cond_13

    return-void

    :cond_13
    iput-boolean v0, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->mConfirmedAlarmIntroduction:Z

    invoke-static {}, Lcom/android/systemui/volume/ZenModePanel;->-get0()Z

    move-result v1

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    invoke-static {v1}, Lcom/android/systemui/volume/ZenModePanel;->-get9(Lcom/android/systemui/volume/ZenModePanel;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Confirmed alarm introduction: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->mConfirmedAlarmIntroduction:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3a
    return-void
.end method

.method private updateConfirmedPriorityIntroduction()V
    .registers 5

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    invoke-static {v1}, Lcom/android/systemui/volume/ZenModePanel;->-get3(Lcom/android/systemui/volume/ZenModePanel;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "DndConfirmedPriorityIntroduction"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->mConfirmedPriorityIntroduction:Z

    if-ne v0, v1, :cond_13

    return-void

    :cond_13
    iput-boolean v0, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->mConfirmedPriorityIntroduction:Z

    invoke-static {}, Lcom/android/systemui/volume/ZenModePanel;->-get0()Z

    move-result v1

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    invoke-static {v1}, Lcom/android/systemui/volume/ZenModePanel;->-get9(Lcom/android/systemui/volume/ZenModePanel;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Confirmed priority introduction: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->mConfirmedPriorityIntroduction:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3a
    return-void
.end method

.method private updateConfirmedSilenceIntroduction()V
    .registers 5

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    invoke-static {v1}, Lcom/android/systemui/volume/ZenModePanel;->-get3(Lcom/android/systemui/volume/ZenModePanel;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "DndConfirmedSilenceIntroduction"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->mConfirmedSilenceIntroduction:Z

    if-ne v0, v1, :cond_13

    return-void

    :cond_13
    iput-boolean v0, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->mConfirmedSilenceIntroduction:Z

    invoke-static {}, Lcom/android/systemui/volume/ZenModePanel;->-get0()Z

    move-result v1

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    invoke-static {v1}, Lcom/android/systemui/volume/ZenModePanel;->-get9(Lcom/android/systemui/volume/ZenModePanel;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Confirmed silence introduction: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->mConfirmedSilenceIntroduction:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3a
    return-void
.end method

.method private updateMinuteIndex()V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    invoke-static {v0}, Lcom/android/systemui/volume/ZenModePanel;->-get3(Lcom/android/systemui/volume/ZenModePanel;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "DndCountdownMinuteIndex"

    invoke-static {}, Lcom/android/systemui/volume/ZenModePanel;->-get1()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/Prefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->clampIndex(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->mMinuteIndex:I

    invoke-static {}, Lcom/android/systemui/volume/ZenModePanel;->-get0()Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    invoke-static {v0}, Lcom/android/systemui/volume/ZenModePanel;->-get9(Lcom/android/systemui/volume/ZenModePanel;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Favorite minute index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->mMinuteIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3c
    return-void
.end method

.method private updateNoneSelected()V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    invoke-static {v0}, Lcom/android/systemui/volume/ZenModePanel;->-get3(Lcom/android/systemui/volume/ZenModePanel;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "DndNoneSelected"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/systemui/Prefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->clampNoneSelected(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->mNoneSelected:I

    invoke-static {}, Lcom/android/systemui/volume/ZenModePanel;->-get0()Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    invoke-static {v0}, Lcom/android/systemui/volume/ZenModePanel;->-get9(Lcom/android/systemui/volume/ZenModePanel;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "None selected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->mNoneSelected:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    return-void
.end method


# virtual methods
.method public getMinuteIndex()I
    .registers 2

    iget v0, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->mMinuteIndex:I

    return v0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->updateMinuteIndex()V

    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->updateNoneSelected()V

    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->updateConfirmedPriorityIntroduction()V

    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->updateConfirmedSilenceIntroduction()V

    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->updateConfirmedAlarmIntroduction()V

    return-void
.end method

.method public setMinuteIndex(I)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->clampIndex(I)I

    move-result p1

    iget v0, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->mMinuteIndex:I

    if-ne p1, v0, :cond_9

    return-void

    :cond_9
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->clampIndex(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->mMinuteIndex:I

    invoke-static {}, Lcom/android/systemui/volume/ZenModePanel;->-get0()Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    invoke-static {v0}, Lcom/android/systemui/volume/ZenModePanel;->-get9(Lcom/android/systemui/volume/ZenModePanel;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Setting favorite minute index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->mMinuteIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    invoke-static {v0}, Lcom/android/systemui/volume/ZenModePanel;->-get3(Lcom/android/systemui/volume/ZenModePanel;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "DndCountdownMinuteIndex"

    iget v2, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->mMinuteIndex:I

    invoke-static {v0, v1, v2}, Lcom/android/systemui/Prefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public trackNoneSelected()V
    .registers 4

    iget v0, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->mNoneSelected:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->clampNoneSelected(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->mNoneSelected:I

    invoke-static {}, Lcom/android/systemui/volume/ZenModePanel;->-get0()Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    invoke-static {v0}, Lcom/android/systemui/volume/ZenModePanel;->-get9(Lcom/android/systemui/volume/ZenModePanel;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Setting none selected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->mNoneSelected:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " threshold="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->mNoneDangerousThreshold:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3c
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    invoke-static {v0}, Lcom/android/systemui/volume/ZenModePanel;->-get3(Lcom/android/systemui/volume/ZenModePanel;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "DndNoneSelected"

    iget v2, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->mNoneSelected:I

    invoke-static {v0, v1, v2}, Lcom/android/systemui/Prefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method
