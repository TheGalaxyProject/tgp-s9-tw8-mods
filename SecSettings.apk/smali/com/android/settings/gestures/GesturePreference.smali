.class public final Lcom/android/settings/gestures/GesturePreference;
.super Landroid/support/v14/preference/SwitchPreference;
.source "GesturePreference.java"


# instance fields
.field private mAnimationAvailable:Z

.field private final mContext:Landroid/content/Context;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mPreviewResource:I

.field private mScrolling:Z

.field private mVideoPath:Landroid/net/Uri;

.field private mVideoReady:Z


# direct methods
.method static synthetic -get0(Lcom/android/settings/gestures/GesturePreference;)Landroid/media/MediaPlayer;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/gestures/GesturePreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/gestures/GesturePreference;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/settings/gestures/GesturePreference;->mScrolling:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/settings/gestures/GesturePreference;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/settings/gestures/GesturePreference;->mVideoReady:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/settings/gestures/GesturePreference;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/settings/gestures/GesturePreference;->mScrolling:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/settings/gestures/GesturePreference;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/settings/gestures/GesturePreference;->mVideoReady:Z

    return p1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9

    const/4 v5, 0x0

    invoke-direct {p0, p1, p2}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/android/settings/gestures/GesturePreference;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget-object v4, Lcom/android/settings/R$styleable;->GesturePreference:[I

    invoke-virtual {v3, p2, v4, v5, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_12
    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v4, "android.resource"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/gestures/GesturePreference;->mVideoPath:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/settings/gestures/GesturePreference;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settings/gestures/GesturePreference;->mVideoPath:Landroid/net/Uri;

    invoke-static {v3, v4}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/gestures/GesturePreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/android/settings/gestures/GesturePreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_73

    iget-object v3, p0, Lcom/android/settings/gestures/GesturePreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v3

    if-lez v3, :cond_73

    const v3, 0x7f0d0129

    invoke-virtual {p0, v3}, Lcom/android/settings/gestures/GesturePreference;->setLayoutResource(I)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/android/settings/gestures/GesturePreference;->mPreviewResource:I

    iget-object v3, p0, Lcom/android/settings/gestures/GesturePreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v4, Lcom/android/settings/gestures/GesturePreference$1;

    invoke-direct {v4, p0}, Lcom/android/settings/gestures/GesturePreference$1;-><init>(Lcom/android/settings/gestures/GesturePreference;)V

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    iget-object v3, p0, Lcom/android/settings/gestures/GesturePreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v4, Lcom/android/settings/gestures/GesturePreference$2;

    invoke-direct {v4, p0}, Lcom/android/settings/gestures/GesturePreference$2;-><init>(Lcom/android/settings/gestures/GesturePreference;)V

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/settings/gestures/GesturePreference;->mAnimationAvailable:Z
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_73} :catch_77
    .catchall {:try_start_12 .. :try_end_73} :catchall_85

    :cond_73
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    :goto_76
    return-void

    :catch_77
    move-exception v2

    :try_start_78
    const-string/jumbo v3, "GesturePreference"

    const-string/jumbo v4, "Animation resource not found. Will not show animation."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_81
    .catchall {:try_start_78 .. :try_end_81} :catchall_85

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_76

    :catchall_85
    move-exception v3

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v3
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/support/v14/preference/SwitchPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    iget-boolean v3, p0, Lcom/android/settings/gestures/GesturePreference;->mAnimationAvailable:Z

    if-nez v3, :cond_8

    return-void

    :cond_8
    const v3, 0x7f0a0382

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/TextureView;

    const v3, 0x7f0a0380

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/settings/gestures/GesturePreference;->mPreviewResource:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    const v3, 0x7f0a0381

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    new-instance v3, Lcom/android/settings/gestures/GesturePreference$3;

    invoke-direct {v3, p0, v1}, Lcom/android/settings/gestures/GesturePreference$3;-><init>(Lcom/android/settings/gestures/GesturePreference;Landroid/widget/ImageView;)V

    invoke-virtual {v2, v3}, Landroid/view/TextureView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Lcom/android/settings/gestures/GesturePreference$4;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/settings/gestures/GesturePreference$4;-><init>(Lcom/android/settings/gestures/GesturePreference;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    invoke-virtual {v2, v3}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method public onDetached()V
    .registers 2

    iget-object v0, p0, Lcom/android/settings/gestures/GesturePreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/settings/gestures/GesturePreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lcom/android/settings/gestures/GesturePreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    iget-object v0, p0, Lcom/android/settings/gestures/GesturePreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    :cond_13
    invoke-super {p0}, Landroid/support/v14/preference/SwitchPreference;->onDetached()V

    return-void
.end method
