.class public Lcom/android/systemui/qs/TouchAnimator$ListenerAdapter;
.super Ljava/lang/Object;
.source "TouchAnimator.java"

# interfaces
.implements Lcom/android/systemui/qs/TouchAnimator$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/TouchAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListenerAdapter"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationAtEnd()V
    .registers 1

    return-void
.end method

.method public onAnimationAtStart()V
    .registers 1

    return-void
.end method

.method public onAnimationStarted()V
    .registers 1

    return-void
.end method
