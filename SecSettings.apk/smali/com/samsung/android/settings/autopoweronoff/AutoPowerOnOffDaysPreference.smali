.class public Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;
.super Landroid/support/v7/preference/Preference;
.source "AutoPowerOnOffDaysPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection;
    }
.end annotation


# instance fields
.field private mDaysOfWeek:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

.field private mDialog:Landroid/app/Dialog;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;)Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->mDaysOfWeek:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;)Landroid/app/Dialog;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->updateSummary(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->mDaysOfWeek:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->mDaysOfWeek:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->mDaysOfWeek:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 7

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->mDaysOfWeek:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    return-void
.end method

.method private showDialog()V
    .registers 8

    invoke-virtual {p0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v5, "layout_inflater"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    const v5, 0x7f0d00e5

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v5, 0x7f0a04b3

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    new-instance v5, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$1;

    invoke-direct {v5, p0, p0, v0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$1;-><init>(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;Landroid/content/Context;)V

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/content/Context;->getThemeResId()I

    move-result v6

    invoke-direct {v5, v0, v6}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v5, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->mDialog:Landroid/app/Dialog;

    iget-object v5, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/Window;->requestFeature(I)Z

    iget-object v5, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    const v6, 0x7f130001

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget-object v5, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v5, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    iget-object v5, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->mDialog:Landroid/app/Dialog;

    new-instance v6, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$2;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$2;-><init>(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;)V

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v5, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->mDialog:Landroid/app/Dialog;

    const v6, 0x7f0a054e

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Toolbar;

    new-instance v5, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$3;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$3;-><init>(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;)V

    invoke-virtual {v4, v5}, Landroid/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    const v5, 0x7f120298

    invoke-virtual {v4, v5}, Landroid/widget/Toolbar;->setTitle(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private updateSummary(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;)V
    .registers 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->toString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected onClick()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    :cond_d
    invoke-direct {p0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->showDialog()V

    return-void
.end method

.method public setDaysOfWeek(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->mDaysOfWeek:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->set(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->updateSummary(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;)V

    return-void
.end method
