.class public Lcom/android/systemui/tuner/PreviewNavInflater;
.super Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;
.source "PreviewNavInflater.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private isValidLayout(Ljava/lang/String;)Z
    .registers 9

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez p1, :cond_5

    return v3

    :cond_5
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_28

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const-string/jumbo v6, ";"

    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v5, v6, :cond_25

    if-eqz v0, :cond_21

    sub-int v5, v0, v1

    if-ne v5, v3, :cond_22

    :cond_21
    return v4

    :cond_22
    move v1, v0

    add-int/lit8 v2, v2, 0x1

    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_28
    const/4 v5, 0x2

    if-ne v2, v5, :cond_33

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v1

    if-eq v5, v3, :cond_33

    :goto_32
    return v3

    :cond_33
    move v3, v4

    goto :goto_32
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->onAttachedToWindow()V

    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string/jumbo v0, "sysui_nav_bar"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-direct {p0, p2}, Lcom/android/systemui/tuner/PreviewNavInflater;->isValidLayout(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    :goto_12
    return-void

    :cond_13
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12
.end method
