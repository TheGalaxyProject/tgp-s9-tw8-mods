.class public Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;
.super Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;
.source "ServiceBoxMusicPage.java"

# interfaces
.implements Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage$1;,
        Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage$2;,
        Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage$MusicClickListener;,
        Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage$ViewHideAnimatorListener;
    }
.end annotation


# static fields
.field private static final INTER_SINEINOUT33:Landroid/view/animation/Interpolator;

.field private static final PREFERRED_BITMAP_ORDER:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAlbumHideListener:Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage$ViewHideAnimatorListener;

.field private mAlbumSwitchListener:Landroid/view/View$OnClickListener;

.field private mBigViewAppInfoBottomSpace:Landroid/view/View;

.field private mBigViewAppInfoTopSpace:Landroid/view/View;

.field private mBigViewMKKeyboardSpace1:Landroid/view/View;

.field private mBigViewMKKeyboardSpace2:Landroid/view/View;

.field private mBigViewNavibarSpace:Landroid/view/View;

.field private mControllerContainer:Landroid/view/View;

.field private mIsCoverShowing:Z

.field private mIsShowingPauseBtn:Z

.field private mIsViewInitializing:Z

.field private mLyricsBtn:Landroid/view/View;

.field private mLyricsHideListener:Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage$ViewHideAnimatorListener;

.field private mLyricsScrollView:Landroid/view/View;

.field private mMetaData:Landroid/media/MediaMetadata;

.field private mMusicAppNameTextView:Lcom/android/systemui/widget/SystemUITextView;

.field private mMusicArtistTextView:Lcom/android/systemui/widget/SystemUITextView;

.field private mMusicCoverContainer:Landroid/view/View;

.field private mMusicCoverView:Landroid/widget/ImageView;

.field private mMusicHolder:Landroid/widget/FrameLayout;

.field private mMusicLyricsView:Lcom/android/systemui/widget/SystemUITextView;

.field private mMusicOOBETextView:Lcom/android/systemui/widget/SystemUITextView;

.field private mMusicTitleTextView:Lcom/android/systemui/widget/SystemUITextView;

.field private mNextBtn:Lcom/android/systemui/widget/SystemUIImageView;

.field private mPlayBtn:Lcom/android/systemui/widget/SystemUIImageView;

.field private mPrevBtn:Lcom/android/systemui/widget/SystemUIImageView;

.field private mRippleArea:Landroid/view/View;

.field private mServiceBoxTriggerListener:Landroid/view/View$OnClickListener;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mIsAnimating:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;)Landroid/media/MediaMetadata;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMetaData:Landroid/media/MediaMetadata;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;)I
    .registers 2

    iget v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mPageType:I

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;)Lcom/android/systemui/servicebox/KeyguardStatusCallback;
    .registers 2

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->getKeyguardStatusCallback()Lcom/android/systemui/servicebox/KeyguardStatusCallback;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->dismissServiceBox()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->playAlbumAnimation(Landroid/view/View;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->showServiceBox()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->updateAnalytics(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut33;

    invoke-direct {v0}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut33;-><init>()V

    sput-object v0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->INTER_SINEINOUT33:Landroid/view/animation/Interpolator;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "android.media.metadata.ALBUM_ART"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "android.media.metadata.ART"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "android.media.metadata.DISPLAY_ICON"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->PREFERRED_BITMAP_ORDER:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 7

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMetaData:Landroid/media/MediaMetadata;

    iput-boolean v1, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mIsViewInitializing:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mIsCoverShowing:Z

    iput-boolean v1, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mIsShowingPauseBtn:Z

    new-instance v0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage$1;-><init>(Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;)V

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mServiceBoxTriggerListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage$2;-><init>(Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;)V

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mAlbumSwitchListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private getBitmapFromMetadata(Landroid/media/MediaMetadata;)Landroid/graphics/Bitmap;
    .registers 6

    const/4 v3, 0x0

    const/4 v1, 0x0

    :goto_2
    sget-object v2, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->PREFERRED_BITMAP_ORDER:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_15

    sget-object v2, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->PREFERRED_BITMAP_ORDER:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_12

    return-object v0

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_15
    return-object v3
.end method

.method private getDetailByKeyCode(I)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x55

    if-ne p1, v0, :cond_10

    iget-boolean v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mIsShowingPauseBtn:Z

    if-eqz v0, :cond_c

    const-string/jumbo v0, "2"

    return-object v0

    :cond_c
    const-string/jumbo v0, "1"

    return-object v0

    :cond_10
    const/4 v0, 0x0

    return-object v0
.end method

.method private getEventNameByKeyCode(I)Ljava/lang/String;
    .registers 3

    packed-switch p1, :pswitch_data_12

    :pswitch_3
    const/4 v0, 0x0

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "1051"

    return-object v0

    :pswitch_9
    const-string/jumbo v0, "1052"

    return-object v0

    :pswitch_d
    const-string/jumbo v0, "1053"

    return-object v0

    nop

    :pswitch_data_12
    .packed-switch 0x55
        :pswitch_9
        :pswitch_3
        :pswitch_d
        :pswitch_5
    .end packed-switch
.end method

.method public static launchBaseApplication(Landroid/content/Context;Lcom/android/systemui/servicebox/KeyguardStatusCallback;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-static {p0}, Lcom/android/systemui/servicebox/pages/music/MusicController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/pages/music/MusicController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/servicebox/pages/music/MusicController;->launchMusicApp(Lcom/android/systemui/servicebox/KeyguardStatusCallback;)Z

    return-void
.end method

.method private playAlbumAnimation(Landroid/view/View;)V
    .registers 10

    const-wide/16 v6, 0xfa

    const-wide/16 v4, 0x0

    const v1, 0x3f4ccccd    # 0.8f

    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMetaData:Landroid/media/MediaMetadata;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicCoverContainer:Landroid/view/View;

    if-nez v0, :cond_13

    :cond_12
    return-void

    :cond_13
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mLyricsScrollView:Landroid/view/View;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicCoverContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mLyricsScrollView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicCoverContainer:Landroid/view/View;

    if-ne p1, v0, :cond_89

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicCoverContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->INTER_SINEINOUT33:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mAlbumHideListener:Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage$ViewHideAnimatorListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mLyricsScrollView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mLyricsScrollView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->INTER_SINEINOUT33:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mIsCoverShowing:Z

    const-string/jumbo v0, "107"

    const-string/jumbo v1, "1058"

    invoke-static {v0, v1}, Lcom/android/systemui/util/AnalyticUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_88
    return-void

    :cond_89
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mLyricsScrollView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->INTER_SINEINOUT33:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mLyricsHideListener:Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage$ViewHideAnimatorListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicCoverContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicCoverContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->INTER_SINEINOUT33:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mIsCoverShowing:Z

    goto :goto_88
.end method

.method private playControllerAnimation(ZZ)V
    .registers 8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mPageType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "playControllerAnimation() immediately = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", isPlayToPause = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mIsShowingPauseBtn:Z

    if-ne p2, v2, :cond_3c

    return-void

    :cond_3c
    iput-boolean p2, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mIsShowingPauseBtn:Z

    if-eqz p1, :cond_74

    if-eqz p2, :cond_63

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mPlayBtn:Lcom/android/systemui/widget/SystemUIImageView;

    const v3, 0x7f080463

    invoke-virtual {v2, v3}, Lcom/android/systemui/widget/SystemUIImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mPlayBtn:Lcom/android/systemui/widget/SystemUIImageView;

    const-string/jumbo v3, "music_player_ic_control_play_to_pause_06"

    invoke-virtual {v2, v3}, Lcom/android/systemui/widget/SystemUIImageView;->setOriginImage(Ljava/lang/String;)V

    :goto_52
    if-eqz p2, :cond_a3

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mContext:Landroid/content/Context;

    const v3, 0x7f1209fb

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_5d
    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mPlayBtn:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v2, v0}, Lcom/android/systemui/widget/SystemUIImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_63
    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mPlayBtn:Lcom/android/systemui/widget/SystemUIImageView;

    const v3, 0x7f08045e

    invoke-virtual {v2, v3}, Lcom/android/systemui/widget/SystemUIImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mPlayBtn:Lcom/android/systemui/widget/SystemUIImageView;

    const-string/jumbo v3, "music_player_ic_control_play_to_pause_01"

    invoke-virtual {v2, v3}, Lcom/android/systemui/widget/SystemUIImageView;->setOriginImage(Ljava/lang/String;)V

    goto :goto_52

    :cond_74
    if-eqz p2, :cond_92

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mPlayBtn:Lcom/android/systemui/widget/SystemUIImageView;

    const v3, 0x7f08045d

    invoke-virtual {v2, v3}, Lcom/android/systemui/widget/SystemUIImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mPlayBtn:Lcom/android/systemui/widget/SystemUIImageView;

    const-string/jumbo v3, "music_player_ic_control_play_to_pause_06"

    invoke-virtual {v2, v3}, Lcom/android/systemui/widget/SystemUIImageView;->setOriginImage(Ljava/lang/String;)V

    :goto_86
    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mPlayBtn:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v2}, Lcom/android/systemui/widget/SystemUIImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_52

    :cond_92
    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mPlayBtn:Lcom/android/systemui/widget/SystemUIImageView;

    const v3, 0x7f08045c

    invoke-virtual {v2, v3}, Lcom/android/systemui/widget/SystemUIImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mPlayBtn:Lcom/android/systemui/widget/SystemUIImageView;

    const-string/jumbo v3, "music_player_ic_control_play_to_pause_01"

    invoke-virtual {v2, v3}, Lcom/android/systemui/widget/SystemUIImageView;->setOriginImage(Ljava/lang/String;)V

    goto :goto_86

    :cond_a3
    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mContext:Landroid/content/Context;

    const v3, 0x7f1209fc

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5d
.end method

.method private updateAnalytics(I)V
    .registers 6

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->isBigView()Z

    move-result v3

    if-eqz v3, :cond_14

    const-string/jumbo v2, "107"

    :goto_9
    invoke-direct {p0, p1}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->getEventNameByKeyCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_18

    return-void

    :cond_14
    const-string/jumbo v2, "106"

    goto :goto_9

    :cond_18
    invoke-direct {p0, p1}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->getDetailByKeyCode(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-static {v2, v1}, Lcom/android/systemui/util/AnalyticUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_25
    return-void

    :cond_26
    invoke-static {v2, v1, v0}, Lcom/android/systemui/util/AnalyticUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_25
.end method

.method private updateSpace()V
    .registers 5

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mBigViewMKKeyboardSpace1:Landroid/view/View;

    if-eqz v0, :cond_11

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mBigViewMKKeyboardSpace1:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mIsMKeyboardConnected:Z

    if-eqz v0, :cond_49

    move v0, v1

    :goto_e
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_11
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mBigViewMKKeyboardSpace2:Landroid/view/View;

    if-eqz v0, :cond_1f

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mBigViewMKKeyboardSpace2:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mIsMKeyboardConnected:Z

    if-eqz v0, :cond_4b

    move v0, v1

    :goto_1c
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1f
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mBigViewAppInfoTopSpace:Landroid/view/View;

    if-eqz v0, :cond_2d

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mBigViewAppInfoTopSpace:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mIsMKeyboardConnected:Z

    if-eqz v0, :cond_4d

    move v0, v2

    :goto_2a
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2d
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mBigViewAppInfoBottomSpace:Landroid/view/View;

    if-eqz v0, :cond_3b

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mBigViewAppInfoBottomSpace:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mIsMKeyboardConnected:Z

    if-eqz v0, :cond_4f

    move v0, v2

    :goto_38
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_3b
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mBigViewNavibarSpace:Landroid/view/View;

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mBigViewNavibarSpace:Landroid/view/View;

    iget-boolean v3, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mIsMKeyboardConnected:Z

    if-eqz v3, :cond_51

    :goto_45
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_48
    return-void

    :cond_49
    move v0, v2

    goto :goto_e

    :cond_4b
    move v0, v2

    goto :goto_1c

    :cond_4d
    move v0, v1

    goto :goto_2a

    :cond_4f
    move v0, v1

    goto :goto_38

    :cond_51
    move v2, v1

    goto :goto_45
.end method

.method private updateViewStyle()V
    .registers 4

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result v0

    if-eqz v0, :cond_13

    const v1, 0x7f08058e

    :goto_d
    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mRippleArea:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void

    :cond_13
    const v1, 0x7f080593

    goto :goto_d
.end method


# virtual methods
.method protected attachContentsView(Landroid/animation/Animator$AnimatorListener;)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mIsViewInitializing:Z

    invoke-super {p0, p1}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->attachContentsView(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mIsViewInitializing:Z

    return-void
.end method

.method public clear()V
    .registers 8

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMetaData:Landroid/media/MediaMetadata;

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/servicebox/pages/music/MusicController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/pages/music/MusicController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/servicebox/pages/music/MusicController;->isOOBETextNeed()Z

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/servicebox/pages/music/MusicController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/pages/music/MusicController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/servicebox/pages/music/MusicController;->isMusicClosedTextNeed()Z

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mPageType:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "clear() showOOBEText = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", showMusicClosedText = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicOOBETextView:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v2, :cond_69

    iget-object v5, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicOOBETextView:Lcom/android/systemui/widget/SystemUITextView;

    if-nez v1, :cond_5b

    if-eqz v0, :cond_cb

    :cond_5b
    move v2, v4

    :goto_5c
    invoke-virtual {v5, v2}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicOOBETextView:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v1, :cond_cd

    const v2, 0x7f1209ff

    :goto_66
    invoke-virtual {v5, v2}, Lcom/android/systemui/widget/SystemUITextView;->setText(I)V

    :cond_69
    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mControllerContainer:Landroid/view/View;

    if-eqz v2, :cond_77

    iget-object v5, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mControllerContainer:Landroid/view/View;

    if-nez v1, :cond_73

    if-eqz v0, :cond_d1

    :cond_73
    const/4 v2, 0x4

    :goto_74
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_77
    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicAppNameTextView:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v2, :cond_83

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicAppNameTextView:Lcom/android/systemui/widget/SystemUITextView;

    const-string/jumbo v5, ""

    invoke-virtual {v2, v5}, Lcom/android/systemui/widget/SystemUITextView;->setText(Ljava/lang/CharSequence;)V

    :cond_83
    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicTitleTextView:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v2, :cond_8f

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicTitleTextView:Lcom/android/systemui/widget/SystemUITextView;

    const-string/jumbo v5, ""

    invoke-virtual {v2, v5}, Lcom/android/systemui/widget/SystemUITextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8f
    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicArtistTextView:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v2, :cond_9b

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicArtistTextView:Lcom/android/systemui/widget/SystemUITextView;

    const-string/jumbo v5, ""

    invoke-virtual {v2, v5}, Lcom/android/systemui/widget/SystemUITextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9b
    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mRippleArea:Landroid/view/View;

    if-eqz v2, :cond_a9

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mRippleArea:Landroid/view/View;

    if-nez v1, :cond_a5

    if-eqz v0, :cond_a6

    :cond_a5
    move v4, v3

    :cond_a6
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_a9
    const-string/jumbo v2, ""

    invoke-virtual {p0, v2}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->setLyrics(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicCoverView:Landroid/widget/ImageView;

    if-eqz v2, :cond_bb

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicCoverView:Landroid/widget/ImageView;

    const v3, 0x7f08040a

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_bb
    if-nez v1, :cond_ca

    xor-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_ca

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/servicebox/pages/music/MusicController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/pages/music/MusicController;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/systemui/servicebox/pages/music/MusicController;->requestCacheData(Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;)V

    :cond_ca
    return-void

    :cond_cb
    move v2, v3

    goto :goto_5c

    :cond_cd
    const v2, 0x7f1209f8

    goto :goto_66

    :cond_d1
    move v2, v4

    goto :goto_74
.end method

.method protected getContentsView(I)Landroid/view/View;
    .registers 6

    const v0, 0x7f0d019e

    packed-switch p1, :pswitch_data_1c

    :goto_6
    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicHolder:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    return-object v1

    :pswitch_14
    const v0, 0x7f0d019c

    goto :goto_6

    :pswitch_18
    const v0, 0x7f0d019d

    goto :goto_6

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_18
        :pswitch_14
    .end packed-switch
.end method

.method protected getHolder()Landroid/view/ViewGroup;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicHolder:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "servicebox_music"

    return-object v0
.end method

.method protected getTransitionOption(Z)Lcom/android/systemui/servicebox/utils/SecTransitionOption;
    .registers 3

    invoke-static {}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->generateCompositeOption()Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v0

    return-object v0
.end method

.method protected initViews(Landroid/view/View;)V
    .registers 6

    const/4 v1, 0x1

    const v0, 0x7f0a047d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicAppNameTextView:Lcom/android/systemui/widget/SystemUITextView;

    const v0, 0x7f0a048e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicTitleTextView:Lcom/android/systemui/widget/SystemUITextView;

    const v0, 0x7f0a047e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicArtistTextView:Lcom/android/systemui/widget/SystemUITextView;

    const v0, 0x7f0a048b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicOOBETextView:Lcom/android/systemui/widget/SystemUITextView;

    const v0, 0x7f0a0484

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicCoverView:Landroid/widget/ImageView;

    const v0, 0x7f0a0485

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicCoverContainer:Landroid/view/View;

    const v0, 0x7f0a0488

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mLyricsBtn:Landroid/view/View;

    const v0, 0x7f0a0489

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mLyricsScrollView:Landroid/view/View;

    const v0, 0x7f0a0487

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicLyricsView:Lcom/android/systemui/widget/SystemUITextView;

    const v0, 0x7f0a048d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUIImageView;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mPrevBtn:Lcom/android/systemui/widget/SystemUIImageView;

    const v0, 0x7f0a048c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUIImageView;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mPlayBtn:Lcom/android/systemui/widget/SystemUIImageView;

    const v0, 0x7f0a048a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUIImageView;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mNextBtn:Lcom/android/systemui/widget/SystemUIImageView;

    const v0, 0x7f0a047c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mControllerContainer:Landroid/view/View;

    const v0, 0x7f0a048f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mRippleArea:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->isBigView()Z

    move-result v0

    if-eqz v0, :cond_d1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicTitleTextView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicArtistTextView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setSelected(Z)V

    const v0, 0x7f0a0481

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mBigViewMKKeyboardSpace1:Landroid/view/View;

    const v0, 0x7f0a0482

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mBigViewMKKeyboardSpace2:Landroid/view/View;

    const v0, 0x7f0a0480

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mBigViewAppInfoTopSpace:Landroid/view/View;

    const v0, 0x7f0a047f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mBigViewAppInfoBottomSpace:Landroid/view/View;

    const v0, 0x7f0a0483

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mBigViewNavibarSpace:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->updateSpace()V

    :cond_d1
    new-instance v0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage$ViewHideAnimatorListener;

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicCoverContainer:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage$ViewHideAnimatorListener;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mAlbumHideListener:Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage$ViewHideAnimatorListener;

    new-instance v0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage$ViewHideAnimatorListener;

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mLyricsScrollView:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage$ViewHideAnimatorListener;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mLyricsHideListener:Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage$ViewHideAnimatorListener;

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicLyricsView:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v0, :cond_ee

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicLyricsView:Lcom/android/systemui/widget/SystemUITextView;

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mAlbumSwitchListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_ee
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicCoverContainer:Landroid/view/View;

    if-eqz v0, :cond_f9

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicCoverContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mAlbumSwitchListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_f9
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mPrevBtn:Lcom/android/systemui/widget/SystemUIImageView;

    new-instance v1, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage$MusicClickListener;

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mContext:Landroid/content/Context;

    const/16 v3, 0x58

    invoke-direct {v1, p0, v2, v3}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage$MusicClickListener;-><init>(Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mPlayBtn:Lcom/android/systemui/widget/SystemUIImageView;

    new-instance v1, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage$MusicClickListener;

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mContext:Landroid/content/Context;

    const/16 v3, 0x55

    invoke-direct {v1, p0, v2, v3}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage$MusicClickListener;-><init>(Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mNextBtn:Lcom/android/systemui/widget/SystemUIImageView;

    new-instance v1, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage$MusicClickListener;

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mContext:Landroid/content/Context;

    const/16 v3, 0x57

    invoke-direct {v1, p0, v2, v3}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage$MusicClickListener;-><init>(Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mRippleArea:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mServiceBoxTriggerListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mPageType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_136

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicAppNameTextView:Lcom/android/systemui/widget/SystemUITextView;

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mServiceBoxTriggerListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_136
    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->updateViewStyle()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mIsShowingPauseBtn:Z

    return-void
.end method

.method public isMusicControllerDisabled()Z
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mControllerContainer:Landroid/view/View;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mControllerContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_f

    :cond_e
    :goto_e
    return v0

    :cond_f
    move v0, v1

    goto :goto_e
.end method

.method protected onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/music/MusicController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/pages/music/MusicController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/servicebox/pages/music/MusicController;->addCallback(Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/music/MusicController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/pages/music/MusicController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/pages/music/MusicController;->removeAllCacheData()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/music/MusicController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/pages/music/MusicController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/servicebox/pages/music/MusicController;->removeCallback(Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;)V

    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    invoke-super {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->onFinishInflate()V

    const v0, 0x7f0a0486

    invoke-virtual {p0, v0}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicHolder:Landroid/widget/FrameLayout;

    invoke-static {}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getInstance()Lcom/android/systemui/lockstar/PluginLockStarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->isLockStarEnabled()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mShowAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p0, v0}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->attachContentsView(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1d
    return-void
.end method

.method protected prepareTransition(Lcom/android/systemui/servicebox/utils/SecTransition;)V
    .registers 12

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x2

    if-nez p1, :cond_8

    return-void

    :cond_8
    const-string/jumbo v2, "servicebox_music_page_lyrics"

    new-instance v3, Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    invoke-direct {v3}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;-><init>()V

    const/16 v4, 0xf

    invoke-virtual {v3, v4}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->setClipFace(I)Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/android/systemui/servicebox/utils/SecTransition;->add(Ljava/lang/String;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)V

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v2, 0x14d

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v0, Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    invoke-direct {v0}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;-><init>()V

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->setScalePivot(I)Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    iget v2, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mPageType:I

    if-ne v2, v5, :cond_67

    new-array v2, v9, [Landroid/animation/Animator;

    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v4, v5, [F

    fill-array-data v4, :array_98

    invoke-static {v6, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v7

    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v4, v5, [F

    fill-array-data v4, :array_a0

    invoke-static {v6, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v8

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v5, [F

    fill-array-data v4, :array_a8

    invoke-static {v6, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v0, v6, v1}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->setCustomAnimators(Landroid/animation/Animator;Landroid/animation/Animator;)Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    :goto_60
    const-string/jumbo v2, "music_cover"

    invoke-virtual {p1, v2, v0}, Lcom/android/systemui/servicebox/utils/SecTransition;->add(Ljava/lang/String;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)V

    return-void

    :cond_67
    new-array v2, v9, [Landroid/animation/Animator;

    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v4, v5, [F

    fill-array-data v4, :array_b0

    invoke-static {v6, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v7

    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v4, v5, [F

    fill-array-data v4, :array_b8

    invoke-static {v6, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v8

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v5, [F

    fill-array-data v4, :array_c0

    invoke-static {v6, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v0, v1, v6}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->setCustomAnimators(Landroid/animation/Animator;Landroid/animation/Animator;)Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    goto :goto_60

    nop

    :array_98
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_a0
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_a8
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_b0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
    .end array-data

    :array_b8
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
    .end array-data

    :array_c0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public refreshViews(I)V
    .registers 2

    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicAppNameTextView:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicAppNameTextView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/widget/SystemUITextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    return-void
.end method

.method public setLyrics(Ljava/lang/String;)V
    .registers 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mPageType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setLyrics() isEmptyLyrics = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicLyricsView:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v1, :cond_3e

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicLyricsView:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v0, :cond_3b

    const-string/jumbo p1, ""

    :cond_3b
    invoke-virtual {v1, p1}, Lcom/android/systemui/widget/SystemUITextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3e
    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mLyricsBtn:Landroid/view/View;

    if-eqz v1, :cond_4b

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mLyricsBtn:Landroid/view/View;

    if-eqz v0, :cond_62

    const/16 v1, 0x8

    :goto_48
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4b
    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicCoverContainer:Landroid/view/View;

    if-eqz v1, :cond_56

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicCoverContainer:Landroid/view/View;

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    :cond_56
    if-eqz v0, :cond_61

    iget-boolean v1, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mIsCoverShowing:Z

    if-nez v1, :cond_61

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mLyricsScrollView:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->playAlbumAnimation(Landroid/view/View;)V

    :cond_61
    return-void

    :cond_62
    const/4 v1, 0x0

    goto :goto_48
.end method

.method public setMetadata(Landroid/media/MediaMetadata;)V
    .registers 9

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMetaData:Landroid/media/MediaMetadata;

    const-string/jumbo v2, ""

    const-string/jumbo v0, ""

    const/4 v1, 0x0

    if-eqz p1, :cond_b4

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mContext:Landroid/content/Context;

    const v5, 0x7f120a00

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mPageType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setMetadata : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "android.media.metadata.TITLE"

    invoke-virtual {p1, v6}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "android.media.metadata.ARTIST"

    invoke-virtual {p1, v6}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "android.media.metadata.TITLE"

    invoke-virtual {p1, v4}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "android.media.metadata.ARTIST"

    invoke-virtual {p1, v4}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->getBitmapFromMetadata(Landroid/media/MediaMetadata;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_72

    move-object v2, v3

    :cond_72
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_79

    move-object v0, v3

    :cond_79
    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->isBigView()Z

    move-result v4

    if-eqz v4, :cond_8d

    iget v4, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mPageType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_8d

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/systemui/servicebox/pages/music/MusicController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/pages/music/MusicController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/servicebox/pages/music/MusicController;->requestLyrics()V

    :cond_8d
    :goto_8d
    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicTitleTextView:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v4, :cond_96

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicTitleTextView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v4, v2}, Lcom/android/systemui/widget/SystemUITextView;->setText(Ljava/lang/CharSequence;)V

    :cond_96
    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicArtistTextView:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v4, :cond_9f

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicArtistTextView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v4, v0}, Lcom/android/systemui/widget/SystemUITextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9f
    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicCoverView:Landroid/widget/ImageView;

    if-eqz v4, :cond_b3

    if-eqz v1, :cond_d0

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicCoverView:Landroid/widget/ImageView;

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v5, v6, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_b3
    :goto_b3
    return-void

    :cond_b4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mPageType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "setMetadata : null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8d

    :cond_d0
    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicCoverView:Landroid/widget/ImageView;

    const v5, 0x7f08040a

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_b3
.end method

.method public setMobileKeyboardState(Z)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->setMobileKeyboardState(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->isBigView()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->updateSpace()V

    :cond_c
    return-void
.end method

.method public setPlaybackState(Landroid/media/session/PlaybackState;)V
    .registers 6

    if-nez p1, :cond_35

    :cond_2
    const/4 v0, 0x0

    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mPageType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPlaybackState() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mIsViewInitializing:Z

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->playControllerAnimation(ZZ)V

    return-void

    :cond_35
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    goto :goto_3
.end method

.method public setSessionEnabled(Z)V
    .registers 6

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3ecccccd    # 0.4f

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mPrevBtn:Lcom/android/systemui/widget/SystemUIImageView;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mPrevBtn:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/widget/SystemUIImageView;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mPrevBtn:Lcom/android/systemui/widget/SystemUIImageView;

    if-eqz p1, :cond_6a

    move v0, v1

    :goto_13
    invoke-virtual {v3, v0}, Lcom/android/systemui/widget/SystemUIImageView;->setAlpha(F)V

    :cond_16
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mPlayBtn:Lcom/android/systemui/widget/SystemUIImageView;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mPlayBtn:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/widget/SystemUIImageView;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mPlayBtn:Lcom/android/systemui/widget/SystemUIImageView;

    if-eqz p1, :cond_6c

    move v0, v1

    :goto_24
    invoke-virtual {v3, v0}, Lcom/android/systemui/widget/SystemUIImageView;->setAlpha(F)V

    :cond_27
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mNextBtn:Lcom/android/systemui/widget/SystemUIImageView;

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mNextBtn:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/widget/SystemUIImageView;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mNextBtn:Lcom/android/systemui/widget/SystemUIImageView;

    if-eqz p1, :cond_6e

    move v0, v1

    :goto_35
    invoke-virtual {v3, v0}, Lcom/android/systemui/widget/SystemUIImageView;->setAlpha(F)V

    :cond_38
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mRippleArea:Landroid/view/View;

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mRippleArea:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_41
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicAppNameTextView:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicAppNameTextView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/widget/SystemUITextView;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicAppNameTextView:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz p1, :cond_70

    move v0, v1

    :goto_4f
    invoke-virtual {v3, v0}, Lcom/android/systemui/widget/SystemUITextView;->setAlpha(F)V

    :cond_52
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicTitleTextView:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v0, :cond_5e

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicTitleTextView:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz p1, :cond_72

    move v0, v1

    :goto_5b
    invoke-virtual {v3, v0}, Lcom/android/systemui/widget/SystemUITextView;->setAlpha(F)V

    :cond_5e
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicArtistTextView:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v0, :cond_69

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->mMusicArtistTextView:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz p1, :cond_74

    :goto_66
    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setAlpha(F)V

    :cond_69
    return-void

    :cond_6a
    move v0, v2

    goto :goto_13

    :cond_6c
    move v0, v2

    goto :goto_24

    :cond_6e
    move v0, v2

    goto :goto_35

    :cond_70
    move v0, v2

    goto :goto_4f

    :cond_72
    move v0, v2

    goto :goto_5b

    :cond_74
    move v1, v2

    goto :goto_66
.end method

.method public showExternalActivity()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
