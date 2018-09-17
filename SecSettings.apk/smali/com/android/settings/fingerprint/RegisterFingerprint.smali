.class public Lcom/android/settings/fingerprint/RegisterFingerprint;
.super Landroid/app/Activity;
.source "RegisterFingerprint.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fingerprint/RegisterFingerprint$1;,
        Lcom/android/settings/fingerprint/RegisterFingerprint$2;,
        Lcom/android/settings/fingerprint/RegisterFingerprint$3;,
        Lcom/android/settings/fingerprint/RegisterFingerprint$4;,
        Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;,
        Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;
    }
.end annotation


# static fields
.field private static final TIME_ENROLL_DELAY:I

.field private static mIsEnforcedMultifactorNReset:Z


# instance fields
.field private SCREEN_ID_REGISTER:I

.field private SCREEN_ID_REGISTER_SECOND:I

.field private fromShowGuidewithTipDialog:Z

.field private isBackSecond:Z

.field private mAuthCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

.field private mAuthErrorHandler:Landroid/os/Handler;

.field private mAuthErrorImage:Landroid/widget/ImageView;

.field private mAuthErrorRunnable:Ljava/lang/Runnable;

.field private mAuthErrorText:Landroid/widget/TextView;

.field private mAuthGuidePlayCount:I

.field private mAuthenticateCancel:Landroid/os/CancellationSignal;

.field private mBackEnabled:Z

.field private mBackHandler:Landroid/os/Handler;

.field private mCaptureNG:I

.field private mCaptureOK:I

.field private mChallenge:J

.field private mClearHomekey:I

.field private mConfirmedDisclaimer:Z

.field private mCoversTheEntire:I

.field private mDetailGuideText:Landroid/widget/TextView;

.field private mDirectFingerprintLock:Z

.field private mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

.field private mEnrollState:Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;

.field private mEnrolledCount:I

.field private mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

.field private mEnrollmentCancel:Landroid/os/CancellationSignal;

.field private mErrorMessage:Landroid/view/ViewGroup;

.field private mErrorText:Landroid/widget/TextView;

.field private mEventProgressBarCount:I

.field private mFinger_ProgressView:Lcom/android/settings/fingerprint/FingerprintProgressEffectView;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mFirstGuideScreen:Landroid/widget/RelativeLayout;

.field private mFromSetupwizard:Z

.field private mGuideText:Landroid/view/ViewGroup;

.field private mGuideTitle:Landroid/widget/TextView;

.field private mHasEnrolledFinger:Z

.field private mHideErrorHandler:Landroid/os/Handler;

.field private mHideErrorRunnable:Ljava/lang/Runnable;

.field private mIdentifyFingerprint:Z

.field private final mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

.field private mIsAfw:Z

.field private mIsButtonClicked:Z

.field private mIsCalledLiftMsg:Z

.field private mIsDesktopMode:Z

.field private mIsFingerGestureSet:Z

.field private mIsFinishRegistration:Z

.field private mIsFirstGuideShow:Z

.field private mIsFirstGuideShowClose:Z

.field private mIsFromKnoxFingerprintPlus:Z

.field private mIsFromKnoxKeyguardEnroll:Z

.field private mIsFromKnoxOtherCases:Z

.field private mIsFromKnoxSetupWizard:Z

.field private mIsFromKnoxTwoStep:Z

.field private mIsFromSecureFolder:Z

.field private mIsInMultiWindowMode:Z

.field private mIsPauseRegistration:Z

.field private mIsPreEnrolled:Z

.field private mIsReCreated:Z

.field private mIsRearSensor:Z

.field private mIsRegisterCompleted:Z

.field private mIsRegisterStarted:Z

.field private mIsRotateGuideShow:Z

.field private mIsSensorInLandscape:Z

.field private mIsSharedDevice:Z

.field private mIsShowErrorMsg:Z

.field private mIsShowKeyboardAlertDialog:Z

.field private mIsShownLiftMsg:Z

.field private mIsSupportSwipeEnroll:Z

.field private mIsSwipeEnrollGuideShow:Z

.field private mKeyboardDialog:Landroid/app/AlertDialog;

.field private mLiftFingerMessage:Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;

.field private mLiftOff:I

.field private mLittleLonger:I

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mMsgHandler:Landroid/os/Handler;

.field private mMsgRunnable:Ljava/lang/Runnable;

.field private mNextButtonArea:Landroid/widget/LinearLayout;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPrevButtonArea:Landroid/widget/LinearLayout;

.field private mPreviousStage:Ljava/lang/String;

.field private mRegisterScreen:Landroid/widget/RelativeLayout;

.field private mSecondGuideScreen:Landroid/widget/RelativeLayout;

.field private mSelectedFingerIndex:I

.field private mSensorStatus:I

.field private mShowErrorHandler:Landroid/os/Handler;

.field private mShowErrorRunnable:Ljava/lang/Runnable;

.field private mSpassSdkCompat:Z

.field private mSurface:Landroid/view/Surface;

.field private mSwipeEnrollGuideScreen:Landroid/widget/RelativeLayout;

.field private mTextureView:Landroid/view/TextureView;

.field private mToken:[B

.field private mTts:Landroid/speech/tts/TextToSpeech;

.field private mTxtVewProgress:Landroid/widget/TextView;

.field private mUiVersion:I

.field private mUpAndDown:I

.field private mUserId:I

.field private mUserPassword:Ljava/lang/String;

.field private mWasSecureBefore:Z


# direct methods
.method static synthetic -get0(Lcom/android/settings/fingerprint/RegisterFingerprint;)I
    .registers 2

    iget v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->SCREEN_ID_REGISTER:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/settings/fingerprint/RegisterFingerprint;)I
    .registers 2

    iget v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->SCREEN_ID_REGISTER_SECOND:I

    return v0
.end method

.method static synthetic -get10(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/view/ViewGroup;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mErrorMessage:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mErrorText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/settings/fingerprint/RegisterFingerprint;)I
    .registers 2

    iget v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mEventProgressBarCount:I

    return v0
.end method

.method static synthetic -get13(Lcom/android/settings/fingerprint/RegisterFingerprint;)Lcom/android/settings/fingerprint/FingerprintProgressEffectView;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFinger_ProgressView:Lcom/android/settings/fingerprint/FingerprintProgressEffectView;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/hardware/fingerprint/FingerprintManager;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/RelativeLayout;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFirstGuideScreen:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFromSetupwizard:Z

    return v0
.end method

.method static synthetic -get17(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/view/ViewGroup;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mGuideText:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic -get18(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mGuideTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get19(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsCalledLiftMsg:Z

    return v0
.end method

.method static synthetic -get2()I
    .registers 1

    sget v0, Lcom/android/settings/fingerprint/RegisterFingerprint;->TIME_ENROLL_DELAY:I

    return v0
.end method

.method static synthetic -get20(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFirstGuideShow:Z

    return v0
.end method

.method static synthetic -get21(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFirstGuideShowClose:Z

    return v0
.end method

.method static synthetic -get22(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsPauseRegistration:Z

    return v0
.end method

.method static synthetic -get23(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsRearSensor:Z

    return v0
.end method

.method static synthetic -get24(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsRegisterCompleted:Z

    return v0
.end method

.method static synthetic -get25(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsRotateGuideShow:Z

    return v0
.end method

.method static synthetic -get26(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsSensorInLandscape:Z

    return v0
.end method

.method static synthetic -get27(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsShowErrorMsg:Z

    return v0
.end method

.method static synthetic -get28(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsShownLiftMsg:Z

    return v0
.end method

.method static synthetic -get29(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsSupportSwipeEnroll:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->fromShowGuidewithTipDialog:Z

    return v0
.end method

.method static synthetic -get30(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsSwipeEnrollGuideShow:Z

    return v0
.end method

.method static synthetic -get31(Lcom/android/settings/fingerprint/RegisterFingerprint;)Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mLiftFingerMessage:Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;

    return-object v0
.end method

.method static synthetic -get32(Lcom/android/settings/fingerprint/RegisterFingerprint;)I
    .registers 2

    iget v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mLiftOff:I

    return v0
.end method

.method static synthetic -get33(Lcom/android/settings/fingerprint/RegisterFingerprint;)I
    .registers 2

    iget v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mLittleLonger:I

    return v0
.end method

.method static synthetic -get34(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/media/MediaPlayer;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic -get35(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMsgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get36(Lcom/android/settings/fingerprint/RegisterFingerprint;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMsgRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get37(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mNextButtonArea:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get38(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/os/PowerManager;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic -get39(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/RelativeLayout;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mSecondGuideScreen:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings/fingerprint/RegisterFingerprint;)I
    .registers 2

    iget v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mCaptureNG:I

    return v0
.end method

.method static synthetic -get40(Lcom/android/settings/fingerprint/RegisterFingerprint;)[B
    .registers 2

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:[B

    return-object v0
.end method

.method static synthetic -get41(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTxtVewProgress:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get42(Lcom/android/settings/fingerprint/RegisterFingerprint;)I
    .registers 2

    iget v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUpAndDown:I

    return v0
.end method

.method static synthetic -get43(Lcom/android/settings/fingerprint/RegisterFingerprint;)I
    .registers 2

    iget v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUserId:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/settings/fingerprint/RegisterFingerprint;)I
    .registers 2

    iget v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mCaptureOK:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/settings/fingerprint/RegisterFingerprint;)I
    .registers 2

    iget v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mClearHomekey:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/settings/fingerprint/RegisterFingerprint;)I
    .registers 2

    iget v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mCoversTheEntire:I

    return v0
.end method

.method static synthetic -get8(Lcom/android/settings/fingerprint/RegisterFingerprint;)Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mEnrollState:Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/settings/fingerprint/RegisterFingerprint;)I
    .registers 2

    iget v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mEnrolledCount:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isBackSecond:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/settings/fingerprint/RegisterFingerprint;I)I
    .registers 2

    iput p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mCaptureNG:I

    return p1
.end method

.method static synthetic -set10(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsShowErrorMsg:Z

    return p1
.end method

.method static synthetic -set11(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsShowKeyboardAlertDialog:Z

    return p1
.end method

.method static synthetic -set12(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsShownLiftMsg:Z

    return p1
.end method

.method static synthetic -set13(Lcom/android/settings/fingerprint/RegisterFingerprint;Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;)Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;
    .registers 2

    iput-object p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mLiftFingerMessage:Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;

    return-object p1
.end method

.method static synthetic -set14(Lcom/android/settings/fingerprint/RegisterFingerprint;I)I
    .registers 2

    iput p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mLiftOff:I

    return p1
.end method

.method static synthetic -set15(Lcom/android/settings/fingerprint/RegisterFingerprint;I)I
    .registers 2

    iput p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mLittleLonger:I

    return p1
.end method

.method static synthetic -set16(Lcom/android/settings/fingerprint/RegisterFingerprint;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .registers 2

    iput-object p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic -set17(Lcom/android/settings/fingerprint/RegisterFingerprint;Landroid/os/Handler;)Landroid/os/Handler;
    .registers 2

    iput-object p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMsgHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic -set18(Lcom/android/settings/fingerprint/RegisterFingerprint;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2

    iput-object p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMsgRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic -set19(Lcom/android/settings/fingerprint/RegisterFingerprint;I)I
    .registers 2

    iput p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUpAndDown:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/settings/fingerprint/RegisterFingerprint;I)I
    .registers 2

    iput p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mCaptureOK:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/settings/fingerprint/RegisterFingerprint;I)I
    .registers 2

    iput p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mClearHomekey:I

    return p1
.end method

.method static synthetic -set4(Lcom/android/settings/fingerprint/RegisterFingerprint;I)I
    .registers 2

    iput p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mCoversTheEntire:I

    return p1
.end method

.method static synthetic -set5(Lcom/android/settings/fingerprint/RegisterFingerprint;Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;)Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;
    .registers 2

    iput-object p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mEnrollState:Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;

    return-object p1
.end method

.method static synthetic -set6(Lcom/android/settings/fingerprint/RegisterFingerprint;I)I
    .registers 2

    iput p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mEnrolledCount:I

    return p1
.end method

.method static synthetic -set7(Lcom/android/settings/fingerprint/RegisterFingerprint;I)I
    .registers 2

    iput p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mEventProgressBarCount:I

    return p1
.end method

.method static synthetic -set8(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsCalledLiftMsg:Z

    return p1
.end method

.method static synthetic -set9(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsRegisterCompleted:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/fingerprint/RegisterFingerprint;)I
    .registers 2

    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getFingerRegisterText()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/fingerprint/RegisterFingerprint;ILjava/lang/CharSequence;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->eventProcess(ILjava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic -wrap10(Lcom/android/settings/fingerprint/RegisterFingerprint;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->showAuthenticateResult(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/settings/fingerprint/RegisterFingerprint;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->showDuplicatedDialog()V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/settings/fingerprint/RegisterFingerprint;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->showErrorMessage(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/settings/fingerprint/RegisterFingerprint;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->showGuideScreen(I)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/settings/fingerprint/RegisterFingerprint;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->showSensorErrorDialog(I)V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/settings/fingerprint/RegisterFingerprint;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->startAuthentication()V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/settings/fingerprint/RegisterFingerprint;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->startEnrollment()V

    return-void
.end method

.method static synthetic -wrap17(Lcom/android/settings/fingerprint/RegisterFingerprint;ILandroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->startViewAnimation(ILandroid/view/View;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings/fingerprint/RegisterFingerprint;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->finishRegistration()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/settings/fingerprint/RegisterFingerprint;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->hideGuideScreen(I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/settings/fingerprint/RegisterFingerprint;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->removeErrorMessageHandler()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/settings/fingerprint/RegisterFingerprint;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->runCompleteRegistration()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/settings/fingerprint/RegisterFingerprint;Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->runTextToSpeech(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/settings/fingerprint/RegisterFingerprint;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setFingerGuideText(I)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/settings/fingerprint/RegisterFingerprint;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setFingerGuideTitle(I)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/settings/fingerprint/RegisterFingerprint;Landroid/view/ViewGroup;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setViewVisibility(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->isRearSensor()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_14

    const/16 v0, 0x7d0

    :goto_f
    sput v0, Lcom/android/settings/fingerprint/RegisterFingerprint;->TIME_ENROLL_DELAY:I

    sput-boolean v1, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsEnforcedMultifactorNReset:Z

    return-void

    :cond_14
    const/16 v0, 0x3e8

    goto :goto_f

    :cond_17
    move v0, v1

    goto :goto_f
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxFingerprintPlus:Z

    iput-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxSetupWizard:Z

    iput-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxOtherCases:Z

    iput-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxKeyguardEnroll:Z

    iput-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxTwoStep:Z

    iput-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromSecureFolder:Z

    iput-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mConfirmedDisclaimer:Z

    iput-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->fromShowGuidewithTipDialog:Z

    iput v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mEventProgressBarCount:I

    iput-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTts:Landroid/speech/tts/TextToSpeech;

    iput-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mBackEnabled:Z

    iput-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFinger_ProgressView:Lcom/android/settings/fingerprint/FingerprintProgressEffectView;

    iput-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsShowErrorMsg:Z

    iput-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFirstGuideShow:Z

    iput-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFirstGuideShowClose:Z

    iput-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsShownLiftMsg:Z

    iput-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsCalledLiftMsg:Z

    iput-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMsgHandler:Landroid/os/Handler;

    iput-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMsgRunnable:Ljava/lang/Runnable;

    iput-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iput-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsShowKeyboardAlertDialog:Z

    iput-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mKeyboardDialog:Landroid/app/AlertDialog;

    sget-object v0, Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;->NONE:Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mEnrollState:Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;

    iput-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:[B

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mChallenge:J

    iput-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsPreEnrolled:Z

    iput-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsPauseRegistration:Z

    iput-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIdentifyFingerprint:Z

    iput-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mDirectFingerprintLock:Z

    iput-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mWasSecureBefore:Z

    iput-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsAfw:Z

    iput-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFromSetupwizard:Z

    iput-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsRegisterStarted:Z

    iput-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsRegisterCompleted:Z

    iput-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFinishRegistration:Z

    iput-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mSpassSdkCompat:Z

    iput v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUpAndDown:I

    iput v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mLittleLonger:I

    iput v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mCoversTheEntire:I

    iput v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mClearHomekey:I

    iput v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mLiftOff:I

    iput v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mCaptureOK:I

    iput v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mCaptureNG:I

    iput-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsInMultiWindowMode:Z

    iput-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsDesktopMode:Z

    iput v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUserId:I

    iput-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsRotateGuideShow:Z

    iput-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsSwipeEnrollGuideShow:Z

    iput v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mAuthGuidePlayCount:I

    iput v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mSensorStatus:I

    iput-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsRearSensor:Z

    iput-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsSensorInLandscape:Z

    iput-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsSupportSwipeEnroll:Z

    iput-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFingerGestureSet:Z

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUiVersion:I

    iput-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mHasEnrolledFinger:Z

    iput-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsReCreated:Z

    iput-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsButtonClicked:Z

    iput-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    new-instance v0, Lcom/android/settings/fingerprint/RegisterFingerprint$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$1;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    iput-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isBackSecond:Z

    new-instance v0, Lcom/android/settings/fingerprint/RegisterFingerprint$2;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$2;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mBackHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$3;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    new-instance v0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$4;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mAuthCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    return-void
.end method

.method private DisableSystemKey()V
    .registers 4

    const/4 v2, 0x1

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsRearSensor:Z

    if-eqz v1, :cond_6

    return-void

    :cond_6
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mBackEnabled:Z

    const/4 v1, 0x3

    invoke-direct {p0, v1, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->requestSystemKeyEvent(IZ)Z

    const/16 v1, 0xbb

    invoke-direct {p0, v1, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->requestSystemKeyEvent(IZ)Z

    const/16 v1, 0x3e9

    invoke-direct {p0, v1, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->requestSystemKeyEvent(IZ)Z

    const-string/jumbo v1, "statusbar"

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    if-eqz v0, :cond_27

    const/high16 v1, 0x1200000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    :cond_27
    return-void
.end method

.method private EnableSystemKey()V
    .registers 7

    const/16 v5, 0x3e9

    const/16 v4, 0xbb

    const/4 v3, 0x3

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsRearSensor:Z

    if-eqz v1, :cond_b

    return-void

    :cond_b
    invoke-direct {p0, v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->isSystemKeyEventRequested(I)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-direct {p0, v3, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->requestSystemKeyEvent(IZ)Z

    :cond_14
    invoke-direct {p0, v4}, Lcom/android/settings/fingerprint/RegisterFingerprint;->isSystemKeyEventRequested(I)Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-direct {p0, v4, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->requestSystemKeyEvent(IZ)Z

    :cond_1d
    invoke-direct {p0, v5}, Lcom/android/settings/fingerprint/RegisterFingerprint;->isSystemKeyEventRequested(I)Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-direct {p0, v5, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->requestSystemKeyEvent(IZ)Z

    :cond_26
    const-string/jumbo v1, "statusbar"

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    if-eqz v0, :cond_34

    invoke-virtual {v0, v2}, Landroid/app/StatusBarManager;->disable(I)V

    :cond_34
    return-void
.end method

.method private cancelEnrollment()V
    .registers 3

    const-string/jumbo v0, "FpstRegisterTouchFingerprint"

    const-string/jumbo v1, "cancelEnrollment"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsPauseRegistration:Z

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mEnrollmentCancel:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    return-void
.end method

.method private checkMobileKeyboard()V
    .registers 7

    const v5, 0x7f120b24

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->ConnectedMobileKeypad(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3c

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsRearSensor:Z

    if-eqz v1, :cond_20

    const-string/jumbo v1, "FpstRegisterTouchFingerprint"

    const-string/jumbo v2, "checkMobileKeyboard : Keyboard is mounted. Reduce the layout."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->reduceTopMargin()V

    :cond_1f
    :goto_1f
    return-void

    :cond_20
    iput-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsShowKeyboardAlertDialog:Z

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v5}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v5}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const v2, 0x7f120bf3

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->showFingerprintKeyboardDialog(Ljava/lang/String;)V

    goto :goto_1f

    :cond_3c
    iget-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsRearSensor:Z

    if-eqz v1, :cond_4d

    const-string/jumbo v1, "FpstRegisterTouchFingerprint"

    const-string/jumbo v2, "checkMobileKeyboard : Keyboard has been removed. Restore the layout"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->restoreTopMargin()V

    goto :goto_1f

    :cond_4d
    iget-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsShowKeyboardAlertDialog:Z

    if-eqz v1, :cond_1f

    iput-boolean v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsShowKeyboardAlertDialog:Z

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mKeyboardDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_1f
.end method

.method private eventProcess(ILjava/lang/CharSequence;)V
    .registers 6

    move v0, p1

    if-eqz p2, :cond_10

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_7
    new-instance v2, Lcom/android/settings/fingerprint/RegisterFingerprint$5;

    invoke-direct {v2, p0, p1, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint$5;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;ILjava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_10
    const-string/jumbo v1, ""

    goto :goto_7
.end method

.method private finishRegistration()V
    .registers 7

    const/4 v5, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFinishRegistration:Z

    if-eqz v1, :cond_11

    const-string/jumbo v1, "FpstRegisterTouchFingerprint"

    const-string/jumbo v2, "finishRegistration() already run."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_11
    const-string/jumbo v1, "FpstRegisterTouchFingerprint"

    const-string/jumbo v2, "finishRegistration()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFinishRegistration:Z

    iput-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsReCreated:Z

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_35

    const-string/jumbo v1, "FpstRegisterTouchFingerprint"

    const-string/jumbo v2, "isShopDemo is true, showLDUDialog()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->showLDUDialog()V

    return-void

    :cond_35
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUserId:I

    invoke-virtual {v1, v5, v2}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v1

    if-nez v1, :cond_6d

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;

    if-eqz v1, :cond_6d

    const-string/jumbo v1, "FingerprintSettings_register"

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6a

    const-string/jumbo v1, "fingerprint_entry"

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5f

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsAfw:Z

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_6a

    :cond_5f
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;

    const-string/jumbo v2, "com.samsung.android.sdk.pass.SpassFingerprint"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6d

    :cond_6a
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->startFingerprintLockSettings()V

    :cond_6d
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "fingerIndex"

    iget v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mSelectedFingerIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "isSharedDevice"

    iget-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsSharedDevice:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "previousStage"

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "hw_auth_token"

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string/jumbo v1, "enrollResult"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v3, v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "fingerprint_fingerIndex"

    iget v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mSelectedFingerIndex:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsSharedDevice:Z

    if-eqz v1, :cond_b8

    const-string/jumbo v1, "lock_screen_pin_pattern_password"

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b8

    iput-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsSharedDevice:Z

    :cond_b8
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->finish()V

    return-void
.end method

.method private getFingerRegisterText()I
    .registers 3

    iget v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mEventProgressBarCount:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_9

    const/16 v0, 0x190

    return v0

    :cond_9
    const/16 v0, 0x192

    return v0
.end method

.method private getSDAgentString()Ljava/lang/CharSequence;
    .registers 9

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    :try_start_6
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string/jumbo v6, "com.sec.enterprise.knox.shareddevice"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v5, "com.sec.enterprise.knox.shareddevice:string/fingerprint_accountpwd_as_confirmpwd"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_46

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string/jumbo v6, "com.sec.enterprise.knox.shareddevice"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v3, v7}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    const-string/jumbo v5, "FpstRegisterTouchFingerprint"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getSDAgentString: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_46} :catch_47

    :cond_46
    :goto_46
    return-object v4

    :catch_47
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_46
.end method

.method private getStatusBarHeight()I
    .registers 7

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "status_bar_height"

    const-string/jumbo v4, "dimen"

    const-string/jumbo v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1c

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :cond_1c
    return v1
.end method

.method private hideGuideScreen(I)V
    .registers 10

    const-wide/16 v6, 0x12c

    const/16 v5, 0xc8

    const/16 v3, 0xc9

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_82

    :cond_a
    :goto_a
    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->stop()V

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    iput-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMediaPlayer:Landroid/media/MediaPlayer;

    :cond_1a
    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTextureView:Landroid/view/TextureView;

    if-eqz v2, :cond_2a

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/TextureView;->destroyDrawingCache()V

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v2, v4}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    iput-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTextureView:Landroid/view/TextureView;

    :cond_2a
    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mSurface:Landroid/view/Surface;

    if-eqz v2, :cond_35

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    iput-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mSurface:Landroid/view/Surface;

    :cond_35
    return-void

    :pswitch_36
    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFirstGuideScreen:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v3, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->startViewAnimation(ILandroid/view/View;)V

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterScreen:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v5, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->startViewAnimation(ILandroid/view/View;)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFirstGuideShow:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/settings/fingerprint/RegisterFingerprint$8;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$8;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_a

    :pswitch_51
    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mSecondGuideScreen:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v3, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->startViewAnimation(ILandroid/view/View;)V

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterScreen:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v5, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->startViewAnimation(ILandroid/view/View;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/settings/fingerprint/RegisterFingerprint$9;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$9;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mEnrollState:Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;

    sget-object v3, Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;->PAUSE:Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;

    if-ne v2, v3, :cond_a

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v2, :cond_a

    sget-object v2, Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;->ENROLL:Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;

    iput-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mEnrollState:Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v2}, Landroid/hardware/fingerprint/FingerprintManager;->requestResume()Z

    goto :goto_a

    :pswitch_7c
    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTextureView:Landroid/view/TextureView;

    invoke-direct {p0, v3, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->startViewAnimation(ILandroid/view/View;)V

    goto :goto_a

    :pswitch_data_82
    .packed-switch 0x12c
        :pswitch_36
        :pswitch_51
        :pswitch_7c
    .end packed-switch
.end method

.method private isFingerprintDisabled()Z
    .registers 4

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUserId:I

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->isFingerprintDisabled(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method private isSkipGuideScreen()Z
    .registers 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    if-nez v0, :cond_d

    return v2

    :cond_d
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsReCreated:Z

    if-eqz v0, :cond_12

    return v3

    :cond_12
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "fingerprint_guide_shown"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_20

    return v3

    :cond_20
    return v2
.end method

.method private isSystemKeyEventRequested(I)Z
    .registers 7

    const-string/jumbo v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    :try_start_b
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/view/IWindowManager;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_12} :catch_14

    move-result v2

    return v2

    :catch_14
    move-exception v0

    const-string/jumbo v2, "FpstRegisterTouchFingerprint"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isSystemKeyEventRequested - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2
.end method

.method private launchChooseLock()V
    .registers 8

    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string/jumbo v2, "FpstRegisterTouchFingerprint"

    const-string/jumbo v3, "launchChooseLock"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/ChooseLockGeneric;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "minimum_quality"

    const/high16 v3, 0x10000

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "hide_disabled_prefs"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "has_challenge"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "challenge"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "for_fingerprint"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.extra.USER_ID"

    iget v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUserId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.extra.USER"

    new-instance v3, Landroid/os/UserHandle;

    iget v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUserId:I

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v2, "lock_screen_fingerprint"

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    const-string/jumbo v2, "screen_lock_bio"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_58
    const-string/jumbo v2, "fingerprint_entry"

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6e

    const-string/jumbo v2, "fingerprint_settings_add_fingerprint"

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_74

    :cond_6e
    const-string/jumbo v2, "settings_bio"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_74
    sget-boolean v2, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsEnforcedMultifactorNReset:Z

    if-eqz v2, :cond_7e

    const-string/jumbo v2, "fromKnoxKeyguard"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_7e
    const-string/jumbo v2, "lock_screen_fingerprint"

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a4

    iget-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIdentifyFingerprint:Z

    if-eqz v2, :cond_b2

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    if-eqz v2, :cond_a4

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v2

    const v3, 0x61000

    if-ne v2, v3, :cond_b2

    :cond_a4
    const-string/jumbo v2, "confirm_credentials"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "password"

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUserPassword:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_b2
    iget-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxOtherCases:Z

    if-eqz v2, :cond_bc

    const-string/jumbo v2, "isFromKnoxSetDigitalLock"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_bc
    const-string/jumbo v2, "fromSetupwizard"

    iget-boolean v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFromSetupwizard:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "google_setupwizard_fingerprint"

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_dd

    iget v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUserId:I

    invoke-static {p0, v2}, Lcom/android/settings/Utils;->hasEnrolledFaceAndNonSecure(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_dd

    const-string/jumbo v2, "faceAuthNotNeed"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_dd
    const/16 v2, 0x3eb

    :try_start_df
    invoke-virtual {p0, v1, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsPauseRegistration:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsPreEnrolled:Z
    :try_end_e8
    .catch Landroid/content/ActivityNotFoundException; {:try_start_df .. :try_end_e8} :catch_e9

    :goto_e8
    return-void

    :catch_e9
    move-exception v0

    const-string/jumbo v2, "FpstRegisterTouchFingerprint"

    const-string/jumbo v3, "launchChooseLock : Activity Not Found !"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->finish()V

    goto :goto_e8
.end method

.method private launchConfirmLock()V
    .registers 11

    const/4 v9, 0x1

    const/4 v4, 0x0

    const-string/jumbo v2, "FpstRegisterTouchFingerprint"

    const-string/jumbo v3, "launchConfirmLock"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-direct {v1, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "isFromKnoxSetDigitalLock"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v2, :cond_30

    const-string/jumbo v2, "FpstRegisterTouchFingerprint"

    const-string/jumbo v3, "onCreate : preEnroll()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v2}, Landroid/hardware/fingerprint/FingerprintManager;->preEnroll()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mChallenge:J

    :cond_30
    iget-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsSharedDevice:Z

    if-eqz v2, :cond_62

    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getSDAgentString()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_38
    const v2, 0x7f12186a

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_64

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_45
    iget-wide v6, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mChallenge:J

    iget v8, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUserId:I

    const/16 v2, 0x3ea

    invoke-virtual/range {v1 .. v8}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;JI)Z

    move-result v2

    if-nez v2, :cond_5d

    const-string/jumbo v2, "FpstRegisterTouchFingerprint"

    const-string/jumbo v3, "Fail launchConfirmationActivity!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->finish()V

    :cond_5d
    iput-boolean v9, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsPauseRegistration:Z

    iput-boolean v9, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsPreEnrolled:Z

    return-void

    :cond_62
    const/4 v0, 0x0

    goto :goto_38

    :cond_64
    move-object v5, v4

    goto :goto_45
.end method

.method private reduceTopMargin()V
    .registers 7

    const v5, 0x7f07036e

    const v4, 0x7f07036d

    const v3, 0x7f070371

    const v2, 0x7f07036b

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFirstGuideScreen:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setTopMargin(Landroid/view/View;I)V

    const v0, 0x7f0a035d

    invoke-direct {p0, v0, v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setTopMargin(II)V

    const v0, 0x7f0a06d0

    invoke-direct {p0, v0, v4}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setTopMargin(II)V

    const v0, 0x7f0a035c

    invoke-direct {p0, v0, v5}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setTopMargin(II)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterScreen:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setTopMargin(Landroid/view/View;I)V

    const v0, 0x7f0a06d3

    invoke-direct {p0, v0, v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setTopMargin(II)V

    const v0, 0x7f0a0331

    const v1, 0x7f07036c

    invoke-direct {p0, v0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setTopMargin(II)V

    const v0, 0x7f0a0689

    const v1, 0x7f07036f

    invoke-direct {p0, v0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setTopMargin(II)V

    const v0, 0x7f0a06d4

    const v1, 0x7f070370

    invoke-direct {p0, v0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setTopMargin(II)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mSecondGuideScreen:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setTopMargin(Landroid/view/View;I)V

    const v0, 0x7f0a0769

    invoke-direct {p0, v0, v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setTopMargin(II)V

    const v0, 0x7f0a06d8

    invoke-direct {p0, v0, v4}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setTopMargin(II)V

    const v0, 0x7f0a0767

    invoke-direct {p0, v0, v5}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setTopMargin(II)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mSwipeEnrollGuideScreen:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setTopMargin(Landroid/view/View;I)V

    const v0, 0x7f0a086b

    invoke-direct {p0, v0, v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setTopMargin(II)V

    const v0, 0x7f0a086d

    invoke-direct {p0, v0, v4}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setTopMargin(II)V

    const v0, 0x7f0a086a

    invoke-direct {p0, v0, v5}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setTopMargin(II)V

    return-void
.end method

.method private removeErrorMessageHandler()V
    .registers 3

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mHideErrorHandler:Landroid/os/Handler;

    if-eqz v0, :cond_14

    const-string/jumbo v0, "FpstRegisterTouchFingerprint"

    const-string/jumbo v1, "mHideErrorHandler removeCallbacks"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mHideErrorHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mHideErrorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_14
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mShowErrorHandler:Landroid/os/Handler;

    if-eqz v0, :cond_28

    const-string/jumbo v0, "FpstRegisterTouchFingerprint"

    const-string/jumbo v1, "mShowErrorHandler removeCallbacks"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mShowErrorHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mShowErrorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_28
    return-void
.end method

.method private removeNavigationBar()V
    .registers 5

    const/16 v0, 0x3706

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, -0x7ffff400

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    return-void
.end method

.method private requestSystemKeyEvent(IZ)Z
    .registers 8

    const-string/jumbo v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    :try_start_b
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_12} :catch_14

    move-result v2

    return v2

    :catch_14
    move-exception v0

    const-string/jumbo v2, "FpstRegisterTouchFingerprint"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestSystemKeyEvent - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2
.end method

.method private restoreTopMargin()V
    .registers 6

    const v4, 0x7f070363

    const v3, 0x7f07035e

    const v2, 0x7f070369

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFirstGuideScreen:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getStatusBarHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setTopMargin(Landroid/view/View;I)V

    const v0, 0x7f0a035d

    invoke-direct {p0, v0, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setTopMargin(II)V

    const v0, 0x7f0a06d0

    invoke-direct {p0, v0, v4}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setTopMargin(II)V

    const v0, 0x7f0a035c

    invoke-direct {p0, v0, v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setTopMargin(II)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterScreen:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getStatusBarHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setTopMargin(Landroid/view/View;I)V

    const v0, 0x7f0a06d3

    invoke-direct {p0, v0, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setTopMargin(II)V

    const v0, 0x7f0a0689

    const v1, 0x7f070376

    invoke-direct {p0, v0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setTopMargin(II)V

    const v0, 0x7f0a06d4

    const v1, 0x7f070365

    invoke-direct {p0, v0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setTopMargin(II)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mSecondGuideScreen:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getStatusBarHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setTopMargin(Landroid/view/View;I)V

    const v0, 0x7f0a0769

    invoke-direct {p0, v0, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setTopMargin(II)V

    const v0, 0x7f0a06d8

    invoke-direct {p0, v0, v4}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setTopMargin(II)V

    const v0, 0x7f0a0767

    invoke-direct {p0, v0, v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setTopMargin(II)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mSwipeEnrollGuideScreen:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getStatusBarHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setTopMargin(Landroid/view/View;I)V

    const v0, 0x7f0a086b

    invoke-direct {p0, v0, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setTopMargin(II)V

    const v0, 0x7f0a086d

    invoke-direct {p0, v0, v4}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setTopMargin(II)V

    const v0, 0x7f0a086a

    invoke-direct {p0, v0, v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setTopMargin(II)V

    return-void
.end method

.method private runCompleteRegistration()V
    .registers 5

    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->startCompleteEffect()V

    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->sendSurveyLog()V

    const-string/jumbo v0, "google_setupwizard_fingerprint"

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "PYPT"

    const-string/jumbo v3, "Fingerprints"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_21
    return-void
.end method

.method private runTextToSpeech(Ljava/lang/String;I)V
    .registers 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_d

    if-eqz p1, :cond_d

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0, p1, p2, v1}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    :goto_c
    return-void

    :cond_d
    const-string/jumbo v0, "FpstRegisterTouchFingerprint"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "runTextToSpeech can\'t be executed : mTts = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " | text = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method

.method private sendBroadcastWrapperForPassSdk()V
    .registers 10

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v6, "com.samsung.android.fingerprint.action.ENROLL_FINISHED"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->sendBroadcast(Landroid/content/Intent;)V

    const-string/jumbo v6, "persona"

    invoke-virtual {p0, v6}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/SemPersonaManager;

    if-eqz v2, :cond_5e

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_5e

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_21
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :try_start_31
    const-string/jumbo v6, "FpstRegisterTouchFingerprint"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onActivityResult : PersonaId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {p0, v1, v6}, Lcom/android/settings/fingerprint/RegisterFingerprint;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_52} :catch_53

    goto :goto_21

    :catch_53
    move-exception v0

    const-string/jumbo v6, "FpstRegisterTouchFingerprint"

    const-string/jumbo v7, "failed to sendBroadcastAsUser"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_21

    :cond_5e
    return-void
.end method

.method private sendSurveyLog()V
    .registers 6

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "com.samsung.android.fingerprint.service"

    const-string/jumbo v2, "FPAF"

    const-string/jumbo v3, "UpAndDown"

    iget v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUpAndDown:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/android/settings/biometrics/BiometricsLog;->sendGsimLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v1, "com.samsung.android.fingerprint.service"

    const-string/jumbo v2, "FPAF"

    const-string/jumbo v3, "LittleLonger"

    iget v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mLittleLonger:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/android/settings/biometrics/BiometricsLog;->sendGsimLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v1, "com.samsung.android.fingerprint.service"

    const-string/jumbo v2, "FPAF"

    const-string/jumbo v3, "CoversTheEntire"

    iget v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mCoversTheEntire:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/android/settings/biometrics/BiometricsLog;->sendGsimLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v1, "com.samsung.android.fingerprint.service"

    const-string/jumbo v2, "FPAF"

    const-string/jumbo v3, "ClearHomekey"

    iget v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mClearHomekey:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/android/settings/biometrics/BiometricsLog;->sendGsimLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v1, "com.samsung.android.fingerprint.service"

    const-string/jumbo v2, "FPAF"

    const-string/jumbo v3, "LiftOff"

    iget v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mLiftOff:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/android/settings/biometrics/BiometricsLog;->sendGsimLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v1, "com.samsung.android.fingerprint.service"

    const-string/jumbo v2, "FPAT"

    const-string/jumbo v3, "OK"

    iget v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mCaptureOK:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/android/settings/biometrics/BiometricsLog;->sendGsimLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v1, "com.samsung.android.fingerprint.service"

    const-string/jumbo v2, "FPAT"

    const-string/jumbo v3, "NG"

    iget v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mCaptureNG:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/android/settings/biometrics/BiometricsLog;->sendGsimLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private setBottomMargin(II)V
    .registers 6

    invoke-virtual {p0, p1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setBottomMargin(Landroid/view/View;I)V

    return-void
.end method

.method private setBottomMargin(Landroid/view/View;I)V
    .registers 4

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_d
    return-void
.end method

.method private setFingerGuideText(I)V
    .registers 5

    const v2, 0x7f120bf6

    const v1, 0x7f120bb0

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mDetailGuideText:Landroid/widget/TextView;

    if-nez v0, :cond_14

    const-string/jumbo v0, "FpstRegisterTouchFingerprint"

    const-string/jumbo v1, "mDetailGuideText is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_14
    packed-switch p1, :pswitch_data_46

    :goto_17
    return-void

    :pswitch_18
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mDetailGuideText:Landroid/widget/TextView;

    const v1, 0x7f120bfd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_17

    :pswitch_21
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mDetailGuideText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->runTextToSpeech(Ljava/lang/String;I)V

    goto :goto_17

    :pswitch_2f
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mDetailGuideText:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_17

    :pswitch_38
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mDetailGuideText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->runTextToSpeech(Ljava/lang/String;I)V

    goto :goto_17

    :pswitch_data_46
    .packed-switch 0x190
        :pswitch_18
        :pswitch_21
        :pswitch_2f
        :pswitch_38
    .end packed-switch
.end method

.method private setFingerGuideTitle(I)V
    .registers 4

    const v1, 0x7f120bb7

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mGuideTitle:Landroid/widget/TextView;

    if-nez v0, :cond_11

    const-string/jumbo v0, "FpstRegisterTouchFingerprint"

    const-string/jumbo v1, "mGuideTitle is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_11
    packed-switch p1, :pswitch_data_36

    :goto_14
    :pswitch_14
    return-void

    :pswitch_15
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mGuideTitle:Landroid/widget/TextView;

    const v1, 0x7f120bb6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_14

    :pswitch_1e
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mGuideTitle:Landroid/widget/TextView;

    const v1, 0x7f120bb5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_14

    :pswitch_27
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mGuideTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->runTextToSpeech(Ljava/lang/String;I)V

    goto :goto_14

    nop

    :pswitch_data_36
    .packed-switch 0x190
        :pswitch_15
        :pswitch_1e
        :pswitch_14
        :pswitch_27
    .end packed-switch
.end method

.method private setIndicatorTransparency()V
    .registers 5

    const/16 v0, 0x3400

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isSetOpenTheme(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_e

    const/16 v0, 0x3410

    :cond_e
    iget-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFromSetupwizard:Z

    if-eqz v2, :cond_14

    or-int/lit8 v0, v0, 0x2

    :cond_14
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, -0x7ffff400

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    return-void
.end method

.method private setTopMargin(II)V
    .registers 6

    invoke-virtual {p0, p1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setTopMargin(Landroid/view/View;I)V

    return-void
.end method

.method private setTopMargin(Landroid/view/View;I)V
    .registers 4

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_d
    return-void
.end method

.method private setViewVisibility(Landroid/view/ViewGroup;Z)V
    .registers 6

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_23

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz p2, :cond_19

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    :goto_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_19
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_16

    :cond_23
    return-void
.end method

.method private showAuthenticateResult(ILjava/lang/String;)V
    .registers 10

    const/16 v6, 0xc8

    const/4 v5, 0x4

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mAuthErrorHandler:Landroid/os/Handler;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mAuthErrorHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mAuthErrorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mAuthErrorHandler:Landroid/os/Handler;

    :cond_12
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v4, v4}, Landroid/os/PowerManager;->userActivity(JII)V

    :cond_1f
    const/16 v1, 0x12e

    invoke-direct {p0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->hideGuideScreen(I)V

    sparse-switch p1, :sswitch_data_8c

    const v0, 0x7f08017f

    :goto_2a
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mAuthErrorImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_3d

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mAuthErrorImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mAuthErrorImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mAuthErrorImage:Landroid/widget/ImageView;

    invoke-direct {p0, v6, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->startViewAnimation(ILandroid/view/View;)V

    :cond_3d
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mAuthErrorText:Landroid/widget/TextView;

    if-eqz v1, :cond_52

    if-eqz p2, :cond_52

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mAuthErrorText:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mAuthErrorText:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mAuthErrorText:Landroid/widget/TextView;

    invoke-direct {p0, v6, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->startViewAnimation(ILandroid/view/View;)V

    :cond_52
    if-eqz p1, :cond_73

    const/16 v1, 0x64

    if-eq p1, v1, :cond_73

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mAuthErrorRunnable:Ljava/lang/Runnable;

    if-nez v1, :cond_63

    new-instance v1, Lcom/android/settings/fingerprint/RegisterFingerprint$23;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$23;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    iput-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mAuthErrorRunnable:Ljava/lang/Runnable;

    :cond_63
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mAuthErrorHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mAuthErrorHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mAuthErrorRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1388

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_73
    return-void

    :sswitch_74
    const v0, 0x7f080180

    goto :goto_2a

    :sswitch_78
    const v0, 0x7f08017c

    goto :goto_2a

    :sswitch_7c
    const v0, 0x7f08017e

    goto :goto_2a

    :sswitch_80
    const v0, 0x7f08017d

    goto :goto_2a

    :sswitch_84
    const v0, 0x7f080176

    goto :goto_2a

    :sswitch_88
    const v0, 0x7f08017f

    goto :goto_2a

    :sswitch_data_8c
    .sparse-switch
        0x0 -> :sswitch_74
        0x1 -> :sswitch_78
        0x2 -> :sswitch_78
        0x3 -> :sswitch_7c
        0x4 -> :sswitch_80
        0x5 -> :sswitch_80
        0x64 -> :sswitch_84
        0x65 -> :sswitch_88
    .end sparse-switch
.end method

.method private showDuplicatedDialog()V
    .registers 9

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mEnrollState:Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;

    sget-object v6, Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;->PAUSE:Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;

    if-eq v5, v6, :cond_1d

    iget-object v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v5, :cond_1d

    const-string/jumbo v5, "FpstRegisterTouchFingerprint"

    const-string/jumbo v6, "showDuplicatedDialog : Called Paused"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v5}, Landroid/hardware/fingerprint/FingerprintManager;->requestPause()Z

    sget-object v5, Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;->PAUSE:Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;

    iput-object v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mEnrollState:Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;

    :cond_1d
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f0d011d

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f0a02e1

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f120b6e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v5, 0x7f0a02e0

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;

    iget v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUiVersion:I

    iget-boolean v6, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsSensorInLandscape:Z

    xor-int/lit8 v6, v6, 0x1

    invoke-virtual {v1, v5, v6}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->setUiVersion(IZ)V

    invoke-virtual {v1}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->startAnimation()V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v5, 0x7f120b28

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    new-instance v5, Lcom/android/settings/fingerprint/RegisterFingerprint$12;

    invoke-direct {v5, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$12;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    const v6, 0x104000a

    invoke-virtual {v2, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v5, Lcom/android/settings/fingerprint/RegisterFingerprint$13;

    invoke-direct {v5, p0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint$13;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;)V

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iget-boolean v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFromSetupwizard:Z

    if-eqz v5, :cond_84

    invoke-static {v0}, Lcom/android/setupwizardlib/util/SystemBarHelper;->hideSystemBars(Landroid/app/Dialog;)V

    :cond_84
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showErrorMessage(ILjava/lang/String;)V
    .registers 9

    :try_start_0
    const-string/jumbo v2, "FpstRegisterTouchFingerprint"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "imageQuality["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0xca

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->startViewAnimation(ILandroid/view/View;)V

    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->removeErrorMessageHandler()V

    iget-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsShowErrorMsg:Z

    if-nez v2, :cond_40

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mGuideText:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3d

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mGuideText:Landroid/view/ViewGroup;

    const/16 v3, 0xcb

    invoke-direct {p0, v3, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->startViewAnimation(ILandroid/view/View;)V

    :cond_3d
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsShowErrorMsg:Z

    :cond_40
    const/4 v2, 0x0

    invoke-direct {p0, p2, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->runTextToSpeech(Ljava/lang/String;I)V

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mShowErrorHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/settings/fingerprint/RegisterFingerprint$14;

    invoke-direct {v2, p0, p2, p1}, Lcom/android/settings/fingerprint/RegisterFingerprint$14;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mShowErrorRunnable:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mShowErrorHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mShowErrorRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mHideErrorHandler:Landroid/os/Handler;

    if-nez v2, :cond_6d

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mHideErrorHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/settings/fingerprint/RegisterFingerprint$15;

    invoke-direct {v2, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$15;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    iput-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mHideErrorRunnable:Ljava/lang/Runnable;

    :cond_6d
    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mHideErrorHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mHideErrorRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v1

    const-string/jumbo v2, "FpstRegisterTouchFingerprint"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Run_Runnable_ErrorMSG : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_91
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_91} :catch_92

    :goto_91
    return-void

    :catch_92
    move-exception v0

    const-string/jumbo v2, "FpstRegisterTouchFingerprint"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "undefined imageQuality: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->showGuidewithTipDialog()V

    goto :goto_91
.end method

.method private showFingerprintKeyboardDialog(Ljava/lang/String;)V
    .registers 5

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120bf4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/fingerprint/RegisterFingerprint$6;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$6;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/fingerprint/RegisterFingerprint$7;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$7;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mKeyboardDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mKeyboardDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showGuideScreen(I)V
    .registers 11

    const/16 v8, 0xc9

    const v7, 0x7f07037d

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTextureView:Landroid/view/TextureView;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/TextureView;->destroyDrawingCache()V

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTextureView:Landroid/view/TextureView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/TextureView;->setVisibility(I)V

    iput-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTextureView:Landroid/view/TextureView;

    :cond_1a
    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mLiftFingerMessage:Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;

    if-eqz v2, :cond_30

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mLiftFingerMessage:Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;

    invoke-virtual {v2}, Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;->interrupt()V

    iput-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mLiftFingerMessage:Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;

    iput-boolean v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsShownLiftMsg:Z

    iput-boolean v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsCalledLiftMsg:Z

    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getFingerRegisterText()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setFingerGuideText(I)V

    :cond_30
    packed-switch p1, :pswitch_data_12a

    :cond_33
    :goto_33
    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTextureView:Landroid/view/TextureView;

    if-eqz v2, :cond_46

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v2, v5}, Landroid/view/TextureView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v2, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v2, v5}, Landroid/view/TextureView;->setFocusable(Z)V

    :cond_46
    return-void

    :pswitch_47
    iput-boolean v6, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFirstGuideShow:Z

    iget-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFromSetupwizard:Z

    if-eqz v2, :cond_53

    const v2, 0x7f0a035c

    invoke-direct {p0, v2, v7}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setBottomMargin(II)V

    :cond_53
    iget-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsRearSensor:Z

    if-eqz v2, :cond_72

    const v2, 0x7f0a06d9

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_72

    const-string/jumbo v2, "\n"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    const v2, 0x7f120bb3

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    :cond_72
    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFirstGuideScreen:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const v2, 0x7f0a06d5

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/TextureView;

    iput-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "fingerprint_guide_shown"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_33

    :pswitch_8d
    iput-boolean v6, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsRotateGuideShow:Z

    iget-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFromSetupwizard:Z

    if-eqz v2, :cond_a2

    const v2, 0x7f0a0767

    const v3, 0x7f07037e

    invoke-direct {p0, v2, v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setTopMargin(II)V

    const v2, 0x7f0a01cc

    invoke-direct {p0, v2, v7}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setBottomMargin(II)V

    :cond_a2
    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mGuideText:Landroid/view/ViewGroup;

    const/16 v3, 0xcb

    invoke-direct {p0, v3, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->startViewAnimation(ILandroid/view/View;)V

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterScreen:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v8, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->startViewAnimation(ILandroid/view/View;)V

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mSecondGuideScreen:Landroid/widget/RelativeLayout;

    const/16 v3, 0xcf

    invoke-direct {p0, v3, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->startViewAnimation(ILandroid/view/View;)V

    const v2, 0x7f0a06d6

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/TextureView;

    iput-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTextureView:Landroid/view/TextureView;

    goto/16 :goto_33

    :pswitch_c2
    iput-boolean v6, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsSwipeEnrollGuideShow:Z

    const v2, 0x7f0a087c

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mAuthErrorText:Landroid/widget/TextView;

    const v2, 0x7f0a0868

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mAuthErrorImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterScreen:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v8, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->startViewAnimation(ILandroid/view/View;)V

    iget-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFromSetupwizard:Z

    if-eqz v2, :cond_f3

    const v2, 0x7f0a086a

    invoke-direct {p0, v2, v7}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setBottomMargin(II)V

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mNextButtonArea:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_f3

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mNextButtonArea:Landroid/widget/LinearLayout;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_f3
    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mSwipeEnrollGuideScreen:Landroid/widget/RelativeLayout;

    const/16 v3, 0xcf

    invoke-direct {p0, v3, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->startViewAnimation(ILandroid/view/View;)V

    const v2, 0x7f0a086c

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/TextureView;

    iput-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTextureView:Landroid/view/TextureView;

    iget v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUserId:I

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUserId:I

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->getKnoxName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mAuthErrorText:Landroid/widget/TextView;

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v5

    const v4, 0x7f120bbb

    invoke-virtual {p0, v4, v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_33

    nop

    :pswitch_data_12a
    .packed-switch 0x12c
        :pswitch_47
        :pswitch_8d
        :pswitch_c2
    .end packed-switch
.end method

.method private showGuidewithTipDialog()V
    .registers 5

    const-string/jumbo v1, "FpstRegisterTouchFingerprint"

    const-string/jumbo v2, "showGuidewithTipDialog"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f120b7c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120b75

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/fingerprint/RegisterFingerprint$18;

    invoke-direct {v2, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$18;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    const v3, 0x104000a

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/fingerprint/RegisterFingerprint$19;

    invoke-direct {v2, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$19;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showLDUDialog()V
    .registers 6

    const v2, 0x7f120b88

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f120c01

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/fingerprint/RegisterFingerprint$10;

    invoke-direct {v3, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$10;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    const v4, 0x104000a

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/fingerprint/RegisterFingerprint$11;

    invoke-direct {v3, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$11;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showSensorErrorDialog(I)V
    .registers 9

    const/4 v6, 0x0

    iget-boolean v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsPauseRegistration:Z

    if-eqz v3, :cond_6

    return-void

    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120b2c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_102

    const/4 v3, 0x5

    if-ne p1, v3, :cond_a0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "always_finish_activities"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_a0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const v5, 0x7f120dc4

    invoke-virtual {p0, v5}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    const v5, 0x7f120b73

    invoke-virtual {v3, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_3c
    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v3, :cond_48

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintManager;->requestGetSensorStatus()I

    move-result v3

    iput v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mSensorStatus:I

    :cond_48
    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v3, :cond_c6

    iget v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mSensorStatus:I

    const v4, 0x186c8

    if-eq v3, v4, :cond_5a

    iget v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mSensorStatus:I

    const v4, 0x186c9

    if-ne v3, v4, :cond_c6

    :cond_5a
    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintManager;->isEnrollSession()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_c6

    const-string/jumbo v3, "FpstRegisterTouchFingerprint"

    const-string/jumbo v4, "Session closed!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->finish()V

    :goto_70
    return-void

    :sswitch_71
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120b79

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3c

    :sswitch_7d
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120b75

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3c

    :sswitch_89
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120b7b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120b74

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3c

    :cond_a0
    const-string/jumbo v3, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b9

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120b78

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3c

    :cond_b9
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120b77

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3c

    :cond_c6
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/settings/fingerprint/RegisterFingerprint$16;

    invoke-direct {v4, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$16;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    const v5, 0x104000a

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/settings/fingerprint/RegisterFingerprint$17;

    invoke-direct {v4, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$17;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const-string/jumbo v3, "google_setupwizard_fingerprint"

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_fd

    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->removeNavigationBar()V

    invoke-static {v0}, Lcom/android/setupwizardlib/util/SystemBarHelper;->hideSystemBars(Landroid/app/Dialog;)V

    :cond_fd
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_70

    :sswitch_data_102
    .sparse-switch
        0x4 -> :sswitch_89
        0x3e9 -> :sswitch_71
        0x3eb -> :sswitch_7d
    .end sparse-switch
.end method

.method private startAuthentication()V
    .registers 9

    const/4 v3, 0x0

    const/4 v1, 0x0

    const-string/jumbo v0, "FpstRegisterTouchFingerprint"

    const-string/jumbo v2, "startAuthentication"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mAuthGuidePlayCount:I

    if-gtz v0, :cond_1f

    iget v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mAuthGuidePlayCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mAuthGuidePlayCount:I

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    return-void

    :cond_1f
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iput-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMediaPlayer:Landroid/media/MediaPlayer;

    :cond_2f
    const/16 v0, 0x64

    invoke-direct {p0, v0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->showAuthenticateResult(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_58

    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mAuthenticateCancel:Landroid/os/CancellationSignal;

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "privileged_attr"

    const/4 v2, 0x2

    invoke-virtual {v7, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mAuthenticateCancel:Landroid/os/CancellationSignal;

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mAuthCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    iget v6, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUserId:I

    move-object v5, v1

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;)V

    :goto_57
    return-void

    :cond_58
    const-string/jumbo v0, "FpstRegisterTouchFingerprint"

    const-string/jumbo v1, "mFingerprintManager == null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->showSensorErrorDialog(I)V

    goto :goto_57
.end method

.method private startBiometricsLockSetup()V
    .registers 6

    const/4 v4, 0x1

    const-string/jumbo v2, "FpstRegisterTouchFingerprint"

    const-string/jumbo v3, "startBiometricsLockSetup"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.samsung.android.settings.biometrics.BiometricsLockSetup"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "for_fingerprint"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "is_knox"

    iget-boolean v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxOtherCases:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.extra.USER_ID"

    iget v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUserId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "google_setupwizard_fingerprint"

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    const-string/jumbo v2, "fromSetupwizard"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_3f
    const/16 v2, 0x3ed

    :try_start_41
    invoke-virtual {p0, v1, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_44
    .catch Landroid/content/ActivityNotFoundException; {:try_start_41 .. :try_end_44} :catch_45

    :goto_44
    return-void

    :catch_45
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    const-string/jumbo v2, "FpstRegisterTouchFingerprint"

    const-string/jumbo v3, "startBiometricsLockSetup : Activity Not Found !"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->finish()V

    goto :goto_44
.end method

.method private startCompleteEffect()V
    .registers 5

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mErrorMessage:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setViewVisibility(Landroid/view/ViewGroup;Z)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/settings/fingerprint/RegisterFingerprint$20;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$20;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private startEnrollment()V
    .registers 7

    const/4 v0, 0x1

    const/4 v3, 0x0

    const-string/jumbo v1, "FpstRegisterTouchFingerprint"

    const-string/jumbo v2, "startEnrollment"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "fingerprint_entry"

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    if-eqz v1, :cond_3f

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isRuleRunning()Z

    move-result v1

    if-eqz v1, :cond_3f

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "EnrolledFingerprint"

    const-string/jumbo v4, "Exist"

    const-string/jumbo v5, "no"

    invoke-virtual {v1, v2, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "FingerprintSettings"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_3f
    iget-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsPauseRegistration:Z

    if-nez v1, :cond_49

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mEnrollState:Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;

    sget-object v2, Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;->NONE:Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;

    if-eq v1, v2, :cond_73

    :cond_49
    const-string/jumbo v0, "FpstRegisterTouchFingerprint"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Skip startEnrollment!! mIsPauseRegistration = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsPauseRegistration:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " | mEnrollState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mEnrollState:Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_73
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:[B

    if-eqz v1, :cond_91

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:[B

    array-length v1, v1

    if-ne v1, v0, :cond_91

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:[B

    aget-byte v1, v1, v3

    const/4 v2, -0x1

    if-ne v1, v2, :cond_91

    const-string/jumbo v1, "FpstRegisterTouchFingerprint"

    const-string/jumbo v2, "Challenge is incorrect"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x3eb

    invoke-direct {p0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->showSensorErrorDialog(I)V

    :cond_91
    iget-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsSharedDevice:Z

    if-nez v1, :cond_9f

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxOtherCases:Z

    if-nez v1, :cond_9f

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxSetupWizard:Z

    if-nez v1, :cond_9f

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxTwoStep:Z

    :cond_9f
    if-nez v0, :cond_b6

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:[B

    if-eqz v0, :cond_a9

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v0, :cond_b6

    :cond_a9
    const-string/jumbo v0, "FpstRegisterTouchFingerprint"

    const-string/jumbo v1, "startEnrollment : mToken or mFingerprintManager is null"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->showSensorErrorDialog(I)V

    return-void

    :cond_b6
    sget-object v0, Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;->ENROLL:Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mEnrollState:Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;

    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mEnrollmentCancel:Landroid/os/CancellationSignal;

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsPauseRegistration:Z

    if-nez v0, :cond_d2

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:[B

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mEnrollmentCancel:Landroid/os/CancellationSignal;

    iget v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUserId:I

    iget-object v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/FingerprintManager;->enroll([BLandroid/os/CancellationSignal;IILandroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;)V

    :cond_d2
    iget v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->SCREEN_ID_REGISTER:I

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->insertFlowLog(Landroid/content/Context;I)V

    return-void
.end method

.method private startFingerprintLockSettings()V
    .registers 6

    const-string/jumbo v3, "FpstRegisterTouchFingerprint"

    const-string/jumbo v4, "startFingerprintLockSettings()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->isFingerprintDisabled()Z

    move-result v3

    if-eqz v3, :cond_19

    const-string/jumbo v3, "FpstRegisterTouchFingerprint"

    const-string/jumbo v4, "isFingerprintDisabled() = TRUE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_19
    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUserId:I

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v2

    const v3, 0x10001

    if-ne v2, v3, :cond_3c

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isDirectionLockSupportFingerprint(Landroid/content/Context;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3c

    const-string/jumbo v3, "FpstRegisterTouchFingerprint"

    const-string/jumbo v4, "Directionlock Enabled"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3c
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "com.android.settings"

    const-string/jumbo v4, "com.android.settings.fingerprint.FingerprintLockSettings"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "previousStage"

    const-string/jumbo v4, "fingerprint_settings_add_fingerprint"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "hw_auth_token"

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:[B

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string/jumbo v3, "fingerprintlockmain"

    iget-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mDirectFingerprintLock:Z

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.extra.USER_ID"

    iget v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUserId:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v3, "WasSecureBefore"

    iget-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mWasSecureBefore:Z

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_73
    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;

    if-eqz v3, :cond_8d

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;

    const-string/jumbo v4, "com.samsung.android.sdk.pass.SpassFingerprint"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8d

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mSpassSdkCompat:Z

    const-string/jumbo v3, "spass_sdk_compat"

    iget-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mSpassSdkCompat:Z

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_8d
    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->startActivity(Landroid/content/Intent;)V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_9b

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/fingerprint/RegisterFingerprint;->overridePendingTransition(II)V
    :try_end_9b
    .catch Landroid/content/ActivityNotFoundException; {:try_start_73 .. :try_end_9b} :catch_9c

    :cond_9b
    :goto_9b
    return-void

    :catch_9c
    move-exception v0

    const-string/jumbo v3, "FpstRegisterTouchFingerprint"

    const-string/jumbo v4, "Activity Not Found !"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9b
.end method

.method private startViewAnimation(ILandroid/view/View;)V
    .registers 16

    if-eqz p2, :cond_19a

    packed-switch p1, :pswitch_data_21a

    :goto_5
    :pswitch_5
    return-void

    :pswitch_6
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v9, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v9, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v9, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    invoke-virtual {p2, v9}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_5

    :pswitch_1f
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v9, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v9, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    invoke-virtual {p2, v9}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v1, 0x4

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    :pswitch_38
    new-instance v10, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v10, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const v8, 0x3cf5c28f    # 0.03f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v9, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v9, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x190

    invoke-virtual {v9, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ea8f5c3    # 0.33f

    const/4 v3, 0x0

    const v4, 0x3f2b851f    # 0.67f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v10, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    invoke-virtual {p2, v10}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v1, 0x4

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    :pswitch_86
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v10, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v10, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const v6, 0x3cf5c28f    # 0.03f

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v9, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v9, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x190

    invoke-virtual {v9, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ea8f5c3    # 0.33f

    const/4 v3, 0x0

    const v4, 0x3f2b851f    # 0.67f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v10, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    invoke-virtual {p2, v10}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_5

    :pswitch_d5
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v10, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v10, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v9, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v9, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v9, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    invoke-virtual {p2, v10}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_5

    :pswitch_fc
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v10, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v10, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const v6, 0x3dcccccd    # 0.1f

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v9, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v9, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x14a

    invoke-virtual {v9, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ea8f5c3    # 0.33f

    const/4 v3, 0x0

    const v4, 0x3f2b851f    # 0.67f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v10, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    invoke-virtual {p2, v10}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_5

    :pswitch_14b
    new-instance v10, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v10, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const v8, 0x3dcccccd    # 0.1f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v9, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v9, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x14a

    invoke-virtual {v9, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ea8f5c3    # 0.33f

    const/4 v3, 0x0

    const v4, 0x3e4ccccd    # 0.2f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v10, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    invoke-virtual {p2, v10}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v1, 0x4

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    :cond_19a
    sparse-switch p1, :sswitch_data_230

    goto/16 :goto_5

    :sswitch_19f
    new-instance v12, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v12, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ea8f5c3    # 0.33f

    const/4 v3, 0x0

    const v4, 0x3f2b851f    # 0.67f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v12, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v9, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3e19999a    # 0.15f

    invoke-direct {v9, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v9, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    invoke-virtual {v12, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTxtVewProgress:Landroid/widget/TextView;

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFinger_ProgressView:Lcom/android/settings/fingerprint/FingerprintProgressEffectView;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->showErrorEffect()V

    goto/16 :goto_5

    :sswitch_1dc
    new-instance v11, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v11, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ea8f5c3    # 0.33f

    const/4 v3, 0x0

    const v4, 0x3f2b851f    # 0.67f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v11, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v9, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3e19999a    # 0.15f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v9, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v9, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    invoke-virtual {v11, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTxtVewProgress:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFinger_ProgressView:Lcom/android/settings/fingerprint/FingerprintProgressEffectView;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->removeFingerMark()V

    goto/16 :goto_5

    nop

    :pswitch_data_21a
    .packed-switch 0xc8
        :pswitch_6
        :pswitch_1f
        :pswitch_5
        :pswitch_38
        :pswitch_86
        :pswitch_d5
        :pswitch_5
        :pswitch_fc
        :pswitch_14b
    .end packed-switch

    :sswitch_data_230
    .sparse-switch
        0xca -> :sswitch_19f
        0xce -> :sswitch_1dc
    .end sparse-switch
.end method

.method private updateRegisterFingerprint()V
    .registers 13

    const/16 v11, 0x190

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string/jumbo v6, "FpstRegisterTouchFingerprint"

    const-string/jumbo v9, "updateRegisterFingerprint()"

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v7}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setRequestedOrientation(I)V

    const v6, 0x7f0d011c

    invoke-virtual {p0, v6}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setContentView(I)V

    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setIndicatorTransparency()V

    const v6, 0x7f0a06d7

    invoke-virtual {p0, v6}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterScreen:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterScreen:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getStatusBarHeight()I

    move-result v9

    invoke-direct {p0, v6, v9}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setTopMargin(Landroid/view/View;I)V

    const v6, 0x7f0a035b

    invoke-virtual {p0, v6}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFirstGuideScreen:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFirstGuideScreen:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getStatusBarHeight()I

    move-result v9

    invoke-direct {p0, v6, v9}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setTopMargin(Landroid/view/View;I)V

    const v6, 0x7f0a0766

    invoke-virtual {p0, v6}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mSecondGuideScreen:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mSecondGuideScreen:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getStatusBarHeight()I

    move-result v9

    invoke-direct {p0, v6, v9}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setTopMargin(Landroid/view/View;I)V

    iget-boolean v6, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsSupportSwipeEnroll:Z

    if-eqz v6, :cond_6d

    const v6, 0x7f0a0869

    invoke-virtual {p0, v6}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mSwipeEnrollGuideScreen:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mSwipeEnrollGuideScreen:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getStatusBarHeight()I

    move-result v9

    invoke-direct {p0, v6, v9}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setTopMargin(Landroid/view/View;I)V

    :cond_6d
    const v6, 0x7f0a0331

    invoke-virtual {p0, v6}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;

    iput-object v6, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFinger_ProgressView:Lcom/android/settings/fingerprint/FingerprintProgressEffectView;

    const v6, 0x7f0a039f

    invoke-virtual {p0, v6}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mGuideText:Landroid/view/ViewGroup;

    const v6, 0x7f0a035e

    invoke-virtual {p0, v6}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mDetailGuideText:Landroid/widget/TextView;

    const v6, 0x7f0a0689

    invoke-virtual {p0, v6}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTxtVewProgress:Landroid/widget/TextView;

    invoke-direct {p0, v11}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setFingerGuideText(I)V

    iget-object v6, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTxtVewProgress:Landroid/widget/TextView;

    new-array v9, v7, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v8

    const v10, 0x7f120b47

    invoke-virtual {p0, v10, v9}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v6, 0x7f0a02dd

    invoke-virtual {p0, v6}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mErrorMessage:Landroid/view/ViewGroup;

    const v6, 0x7f0a02de

    invoke-virtual {p0, v6}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mErrorText:Landroid/widget/TextView;

    const v6, 0x7f0a004a

    invoke-virtual {p0, v6}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_d4

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_d4
    const v6, 0x7f0a0295

    invoke-virtual {p0, v6}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    if-eqz v4, :cond_e2

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_e2
    const v6, 0x7f0a0294

    invoke-virtual {p0, v6}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    if-eqz v3, :cond_f0

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_f0
    const v6, 0x7f0a06d3

    invoke-virtual {p0, v6}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mGuideTitle:Landroid/widget/TextView;

    invoke-direct {p0, v11}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setFingerGuideTitle(I)V

    iget-boolean v6, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFromSetupwizard:Z

    if-eqz v6, :cond_161

    const v6, 0x7f0a0135

    invoke-virtual {p0, v6}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const v6, 0x7f0a0599

    invoke-virtual {p0, v6}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mNextButtonArea:Landroid/widget/LinearLayout;

    const v6, 0x7f0a0663

    invoke-virtual {p0, v6}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPrevButtonArea:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v9, "show_button_background"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iget-object v6, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mNextButtonArea:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_14a

    iget-object v6, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mNextButtonArea:Landroid/widget/LinearLayout;

    invoke-virtual {v6, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v5, :cond_14a

    iget-object v6, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mNextButtonArea:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f080786

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_14a
    iget-object v6, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPrevButtonArea:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_153

    iget-object v6, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPrevButtonArea:Landroid/widget/LinearLayout;

    invoke-virtual {v6, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_153
    const v6, 0x7f0a0047

    invoke-virtual {p0, v6}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    if-eqz v1, :cond_161

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_161
    invoke-static {p0}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_170

    new-instance v6, Landroid/speech/tts/TextToSpeech;

    iget-object v9, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-direct {v6, p0, v9}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v6, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTts:Landroid/speech/tts/TextToSpeech;

    :cond_170
    iput-boolean v7, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsRegisterStarted:Z

    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->DisableSystemKey()V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v9, "fingerprint_gesture_quick"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_1ab

    move v6, v7

    :goto_183
    iput-boolean v6, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFingerGestureSet:Z

    iget-boolean v6, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFingerGestureSet:Z

    if-eqz v6, :cond_193

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "fingerprint_gesture_quick"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_193
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->isSkipGuideScreen()Z

    move-result v6

    if-eqz v6, :cond_1ad

    iget-object v6, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterScreen:Landroid/widget/RelativeLayout;

    const/16 v7, 0xc8

    invoke-direct {p0, v7, v6}, Lcom/android/settings/fingerprint/RegisterFingerprint;->startViewAnimation(ILandroid/view/View;)V

    iget-object v6, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mGuideText:Landroid/view/ViewGroup;

    const/16 v7, 0xcf

    invoke-direct {p0, v7, v6}, Lcom/android/settings/fingerprint/RegisterFingerprint;->startViewAnimation(ILandroid/view/View;)V

    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->startEnrollment()V

    :goto_1aa
    return-void

    :cond_1ab
    move v6, v8

    goto :goto_183

    :cond_1ad
    const/16 v6, 0x12c

    invoke-direct {p0, v6}, Lcom/android/settings/fingerprint/RegisterFingerprint;->showGuideScreen(I)V

    goto :goto_1aa
.end method


# virtual methods
.method public chageGuideVideo(I)V
    .registers 7

    const/4 v4, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_7a

    :goto_5
    if-eqz v1, :cond_21

    :try_start_7
    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->reset()V

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, p0, v1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setLooping(Z)V

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_21} :catch_6c

    :cond_21
    :goto_21
    return-void

    :pswitch_22
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "android.resource://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/raw/fingerprint_v_02"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFirstGuideShowClose:Z

    goto :goto_5

    :pswitch_48
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "android.resource://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/raw/fingerprint_h_02"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_5

    :catch_6c
    move-exception v0

    const-string/jumbo v2, "FpstRegisterTouchFingerprint"

    const-string/jumbo v3, "IOException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->finish()V

    goto :goto_21

    :pswitch_data_7a
    .packed-switch 0x12c
        :pswitch_22
        :pswitch_48
    .end packed-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 12

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const-string/jumbo v2, "FpstRegisterTouchFingerprint"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestCode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " resultCode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " data : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsPauseRegistration:Z

    invoke-virtual {p0, p2, p3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setResult(ILandroid/content/Intent;)V

    packed-switch p1, :pswitch_data_1b2

    :cond_3e
    :goto_3e
    :pswitch_3e
    return-void

    :pswitch_3f
    if-ne p2, v6, :cond_7e

    if-eqz p3, :cond_4c

    const-string/jumbo v2, "hw_auth_token"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:[B

    :cond_4c
    const-string/jumbo v3, "FpstRegisterTouchFingerprint"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onActivityResult: token="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:[B

    if-eqz v2, :cond_7a

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:[B

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    :goto_65
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mEnrollState:Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;

    sget-object v3, Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;->NONE:Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;

    if-ne v2, v3, :cond_3e

    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->updateRegisterFingerprint()V

    goto :goto_3e

    :cond_7a
    const-string/jumbo v2, "NULL"

    goto :goto_65

    :cond_7e
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->finish()V

    goto :goto_3e

    :pswitch_82
    if-ne p2, v7, :cond_197

    iget-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mWasSecureBefore:Z

    if-nez v2, :cond_121

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUserId:I

    invoke-virtual {v2, v3}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v2

    if-eqz v2, :cond_121

    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v2

    if-eqz v2, :cond_112

    const v2, 0x7f12038e

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :cond_a6
    :goto_a6
    if-eqz p3, :cond_b1

    const-string/jumbo v2, "hw_auth_token"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:[B

    :cond_b1
    const-string/jumbo v3, "FpstRegisterTouchFingerprint"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onActivityResult: token="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:[B

    if-eqz v2, :cond_182

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:[B

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    :goto_ca
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v7, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mDirectFingerprintLock:Z

    iget-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxOtherCases:Z

    if-nez v2, :cond_e3

    iget-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxSetupWizard:Z

    if-nez v2, :cond_e3

    iget-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxTwoStep:Z

    if-eqz v2, :cond_18c

    :cond_e3
    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mEnrollState:Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;

    sget-object v3, Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;->NONE:Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;

    if-ne v2, v3, :cond_3e

    const-string/jumbo v3, "FpstRegisterTouchFingerprint"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[KNOX FINGERPRINT] : startEnroll, token="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:[B

    if-eqz v2, :cond_187

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:[B

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    :goto_102
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->updateRegisterFingerprint()V

    goto/16 :goto_3e

    :cond_112
    const v2, 0x7f120b3d

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_a6

    :cond_121
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v0

    const-string/jumbo v2, "FpstRegisterTouchFingerprint"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "passwordQuality : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sparse-switch v0, :sswitch_data_1be

    :goto_147
    if-eqz v1, :cond_a6

    invoke-static {p0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_a6

    :sswitch_152
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120b3c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_147

    :sswitch_15e
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120b38

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_147

    :sswitch_16a
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120b3a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_147

    :sswitch_176
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120b36

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_147

    :cond_182
    const-string/jumbo v2, "NULL"

    goto/16 :goto_ca

    :cond_187
    const-string/jumbo v2, "NULL"

    goto/16 :goto_102

    :cond_18c
    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mEnrollState:Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;

    sget-object v3, Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;->NONE:Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;

    if-ne v2, v3, :cond_3e

    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->updateRegisterFingerprint()V

    goto/16 :goto_3e

    :cond_197
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->finish()V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-virtual {p0, v5, v5}, Lcom/android/settings/fingerprint/RegisterFingerprint;->overridePendingTransition(II)V

    goto/16 :goto_3e

    :pswitch_1a5
    if-ne p2, v6, :cond_1ac

    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->launchChooseLock()V

    goto/16 :goto_3e

    :cond_1ac
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->finish()V

    goto/16 :goto_3e

    nop

    :pswitch_data_1b2
    .packed-switch 0x3ea
        :pswitch_3f
        :pswitch_82
        :pswitch_3e
        :pswitch_1a5
    .end packed-switch

    :sswitch_data_1be
    .sparse-switch
        0x10000 -> :sswitch_16a
        0x10001 -> :sswitch_176
        0x20000 -> :sswitch_152
        0x30000 -> :sswitch_152
        0x40000 -> :sswitch_15e
        0x50000 -> :sswitch_15e
        0x60000 -> :sswitch_15e
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .registers 7

    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_76

    :cond_9
    :goto_9
    return-void

    :sswitch_a
    iget v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->SCREEN_ID_REGISTER_SECOND:I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0248

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {p0, v1, v2}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;II)V

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsButtonClicked:Z

    if-nez v1, :cond_9

    iput-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsButtonClicked:Z

    iput-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsReCreated:Z

    iput-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFinishRegistration:Z

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->recreate()V

    goto :goto_9

    :sswitch_28
    iget v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->SCREEN_ID_REGISTER_SECOND:I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b024a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iget v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mEnrolledCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p0, v1, v2, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsButtonClicked:Z

    if-nez v1, :cond_9

    iput-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsButtonClicked:Z

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsSupportSwipeEnroll:Z

    if-eqz v1, :cond_58

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUserId:I

    invoke-virtual {v1, v2}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v1

    if-eqz v1, :cond_58

    const/16 v1, 0x12e

    invoke-direct {p0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->showGuideScreen(I)V

    goto :goto_9

    :cond_58
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->finishRegistration()V

    goto :goto_9

    :sswitch_5c
    iget-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsRegisterCompleted:Z

    if-eqz v1, :cond_64

    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->finishRegistration()V

    goto :goto_9

    :cond_64
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "enrollResult"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v2, v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->finish()V

    goto :goto_9

    :sswitch_data_76
    .sparse-switch
        0x7f0a0047 -> :sswitch_a
        0x7f0a004a -> :sswitch_a
        0x7f0a0294 -> :sswitch_28
        0x7f0a0295 -> :sswitch_28
        0x7f0a0599 -> :sswitch_28
        0x7f0a0663 -> :sswitch_5c
    .end sparse-switch
.end method

.method public onClickContinue(Landroid/view/View;)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsRotateGuideShow:Z

    if-eqz v0, :cond_9

    const/16 v0, 0x12d

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->hideGuideScreen(I)V

    :cond_9
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5

    const-string/jumbo v0, "FpstRegisterTouchFingerprint"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onConfigurationChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->checkMobileKeyboard()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 13

    const/4 v10, -0x1

    const/4 v5, 0x1

    const/4 v9, 0x0

    const/4 v6, 0x0

    const-string/jumbo v4, "FpstRegisterTouchFingerprint"

    const-string/jumbo v7, "onCreate"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/Window;->requestFeature(I)Z

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v4, "previousStage"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;

    const-string/jumbo v4, "FpstRegisterTouchFingerprint"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[previousStage] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "android.intent.extra.USER_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUserId:I

    const-string/jumbo v4, "FpstRegisterTouchFingerprint"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mUserId : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUserId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_277

    iget v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUserId:I

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v4

    if-eqz v4, :cond_277

    iput-object v9, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:[B

    :goto_7c
    iget v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUserId:I

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v4

    if-eqz v4, :cond_a2

    iput v6, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUserId:I

    const-string/jumbo v4, "FpstRegisterTouchFingerprint"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "SecureFolder use owner\'s fingerprint. mUserId : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUserId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a2
    const-string/jumbo v7, "FpstRegisterTouchFingerprint"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onCreate: token="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:[B

    if-eqz v4, :cond_282

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:[B

    invoke-static {v4}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v4

    :goto_bb
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "fingerIndex"

    invoke-virtual {v0, v4, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mSelectedFingerIndex:I

    const-string/jumbo v4, "isSharedDevice"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsSharedDevice:Z

    const-string/jumbo v4, "FpstRegisterTouchFingerprint"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[mSelectedFingerIndex] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mSelectedFingerIndex:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "lock_screen_fingerprint"

    iget-object v7, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_108

    const-string/jumbo v4, "password"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUserPassword:Ljava/lang/String;

    :cond_108
    const-string/jumbo v4, "identifyFingerprint"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIdentifyFingerprint:Z

    const-string/jumbo v4, "isAfw"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsAfw:Z

    const-string/jumbo v4, "fromSetupwizard"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFromSetupwizard:Z

    const-string/jumbo v4, "fromKnoxKeyguard"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsEnforcedMultifactorNReset:Z

    const-string/jumbo v4, "isFromKnoxSetupWizard"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxSetupWizard:Z

    const-string/jumbo v4, "isFromKnoxFingerprintPlus"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxFingerprintPlus:Z

    const-string/jumbo v4, "is_knox"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxOtherCases:Z

    const-string/jumbo v4, "is_knox_two_step"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxTwoStep:Z

    const-string/jumbo v4, "is_secure_folder"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromSecureFolder:Z

    const-string/jumbo v4, "FpstRegisterTouchFingerprint"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[KNOX FINGERPRINT] : init, mIsFromKnoxSetupWizard:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxSetupWizard:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", mIsFromKnoxOtherCases:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxOtherCases:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", mIsFromKnoxTwoStep"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxTwoStep:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", mIsFromSecureFolder"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromSecureFolder:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "FpstRegisterTouchFingerprint"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onCreate : mUiVersion = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUiVersion:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->isRearSensor()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsRearSensor:Z

    const-string/jumbo v4, "FpstRegisterTouchFingerprint"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onCreate : mIsRearSensor = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsRearSensor:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->isSensorInLandscape()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsSensorInLandscape:Z

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsInMultiWindowMode:Z

    const-string/jumbo v4, "FpstRegisterTouchFingerprint"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onCreate : isInMultiWindowMode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsInMultiWindowMode:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsDesktopMode:Z

    const-string/jumbo v4, "FpstRegisterTouchFingerprint"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onCreate : mIsDesktopMode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsDesktopMode:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v4, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const-class v4, Landroid/os/PowerManager;

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    iput-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPowerManager:Landroid/os/PowerManager;

    iget-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsInMultiWindowMode:Z

    if-nez v4, :cond_24b

    iget-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsDesktopMode:Z

    if-nez v4, :cond_24b

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isGuestUser(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_29a

    :cond_24b
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v4, "enrollResult"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v4, "hw_auth_token"

    iget-object v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:[B

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    invoke-virtual {p0, v6, v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setResult(ILandroid/content/Intent;)V

    iget-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsDesktopMode:Z

    if-eqz v4, :cond_287

    const v4, 0x7f120bb1

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    :cond_273
    :goto_273
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->finish()V

    return-void

    :cond_277
    const-string/jumbo v4, "hw_auth_token"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:[B

    goto/16 :goto_7c

    :cond_282
    const-string/jumbo v4, "NULL"

    goto/16 :goto_bb

    :cond_287
    iget-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsInMultiWindowMode:Z

    if-eqz v4, :cond_273

    const v4, 0x7f120b6d

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_273

    :cond_29a
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v7, "fingerprint_disclaimer_noti"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_2c4

    iput-boolean v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mConfirmedDisclaimer:Z

    :goto_2a9
    const-class v4, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v4, :cond_304

    const-string/jumbo v4, "FpstRegisterTouchFingerprint"

    const-string/jumbo v5, "[onCreate] mFingerprintManager == null"

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v6}, Lcom/android/settings/fingerprint/RegisterFingerprint;->showSensorErrorDialog(I)V

    return-void

    :cond_2c4
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v4, "fingerprint_disclaimer_noti"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_2ff

    iput-boolean v6, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mConfirmedDisclaimer:Z

    const-string/jumbo v4, "FpstRegisterTouchFingerprint"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ConfirmedDisclaimer : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mConfirmedDisclaimer:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2ef
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "fingerprint_disclaimer_noti"

    iget-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mConfirmedDisclaimer:Z

    if-eqz v4, :cond_302

    move v4, v5

    :goto_2fb
    invoke-static {v7, v8, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2a9

    :cond_2ff
    iput-boolean v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mConfirmedDisclaimer:Z

    goto :goto_2ef

    :cond_302
    move v4, v6

    goto :goto_2fb

    :cond_304
    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v4}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v1

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v4}, Landroid/hardware/fingerprint/FingerprintManager;->requestGetSensorStatus()I

    move-result v4

    iput v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mSensorStatus:I

    if-eqz v1, :cond_322

    iget v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mSensorStatus:I

    const v7, 0x186c8

    if-eq v4, v7, :cond_344

    iget v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mSensorStatus:I

    const v7, 0x186c9

    if-eq v4, v7, :cond_344

    :cond_322
    const-string/jumbo v4, "FpstRegisterTouchFingerprint"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[onCreate] isHardwareDetected = false, requestGetSensorStatus = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mSensorStatus:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mSensorStatus:I

    invoke-direct {p0, v4}, Lcom/android/settings/fingerprint/RegisterFingerprint;->showSensorErrorDialog(I)V

    return-void

    :cond_344
    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v7, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUserId:I

    invoke-virtual {v4, v7}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mHasEnrolledFinger:Z

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    const/4 v7, 0x2

    invoke-virtual {v4, v7}, Landroid/hardware/fingerprint/FingerprintManager;->semHasFeature(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsSupportSwipeEnroll:Z

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:[B

    if-nez v4, :cond_3be

    if-eqz p1, :cond_3be

    const-string/jumbo v4, "hw_auth_token"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:[B

    const-string/jumbo v4, "IsPreEnrolled"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsPreEnrolled:Z

    const-string/jumbo v4, "IsReCreated"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsReCreated:Z

    const-string/jumbo v4, "fingerprintlockmain"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mDirectFingerprintLock:Z

    const-string/jumbo v4, "WasSecureBefore"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mWasSecureBefore:Z

    :goto_38a
    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:[B

    if-eqz v4, :cond_3c9

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:[B

    array-length v4, v4

    if-ne v4, v5, :cond_399

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:[B

    aget-byte v4, v4, v6

    if-eq v4, v10, :cond_3c9

    :cond_399
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->updateRegisterFingerprint()V

    :cond_39c
    :goto_39c
    iget v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mSelectedFingerIndex:I

    if-nez v4, :cond_3a3

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->finish()V

    :cond_3a3
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0246

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->SCREEN_ID_REGISTER:I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b024b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->SCREEN_ID_REGISTER_SECOND:I

    return-void

    :cond_3be
    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v7, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUserId:I

    invoke-virtual {v4, v7}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mWasSecureBefore:Z

    goto :goto_38a

    :cond_3c9
    iget-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsPreEnrolled:Z

    if-nez v4, :cond_39c

    iget-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxOtherCases:Z

    if-nez v4, :cond_3dd

    iget-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxSetupWizard:Z

    if-nez v4, :cond_3dd

    iget-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxTwoStep:Z

    if-nez v4, :cond_3dd

    iget-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxFingerprintPlus:Z

    if-eqz v4, :cond_440

    :cond_3dd
    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v4, :cond_39c

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v7, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUserId:I

    invoke-virtual {v4, v7}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v4

    if-eqz v4, :cond_3ef

    iget-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxFingerprintPlus:Z

    if-eqz v4, :cond_39c

    :cond_3ef
    const-string/jumbo v4, "FpstRegisterTouchFingerprint"

    const-string/jumbo v7, "[KNOX FINGERPRPINT] : nonFinger chooseLock CASE"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v7, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUserId:I

    invoke-virtual {v4, v7}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v4

    if-eqz v4, :cond_41f

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v7, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUserId:I

    invoke-virtual {v4, v7}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v4

    if-nez v4, :cond_410

    iget v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUserId:I

    if-nez v4, :cond_41f

    :cond_410
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v6, "isFromKnoxSetDigitalLock"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->launchConfirmLock()V

    goto/16 :goto_39c

    :cond_41f
    iget v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUserId:I

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v4

    if-eqz v4, :cond_43b

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v7, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUserId:I

    invoke-virtual {v4, v7}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_43b

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v4

    if-nez v4, :cond_410

    :cond_43b
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->startBiometricsLockSetup()V

    goto/16 :goto_39c

    :cond_440
    iget-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsSharedDevice:Z

    if-nez v4, :cond_46a

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUserId:I

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v4

    if-eqz v4, :cond_46f

    const-string/jumbo v4, "lock_screen_fingerprint"

    iget-object v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45d

    iget-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromSecureFolder:Z

    if-eqz v4, :cond_46f

    :cond_45d
    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUserId:I

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v4

    const v5, 0x61000

    if-eq v4, v5, :cond_46f

    :cond_46a
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->launchConfirmLock()V

    goto/16 :goto_39c

    :cond_46f
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->startBiometricsLockSetup()V

    goto/16 :goto_39c
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .registers 6

    const-string/jumbo v2, "FpstRegisterTouchFingerprint"

    const-string/jumbo v3, "onDestroy"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsReCreated:Z

    if-nez v2, :cond_25

    iget-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mSpassSdkCompat:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_25

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;

    if-eqz v2, :cond_25

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;

    const-string/jumbo v3, "com.samsung.android.sdk.pass.SpassFingerprint"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->sendBroadcastWrapperForPassSdk()V

    :cond_25
    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mEnrollState:Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;

    sget-object v3, Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;->PAUSE:Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;

    if-ne v2, v3, :cond_41

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v2, :cond_41

    const-string/jumbo v2, "FpstRegisterTouchFingerprint"

    const-string/jumbo v3, "onDestroy : Called Resume"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v2}, Landroid/hardware/fingerprint/FingerprintManager;->requestResume()Z

    sget-object v2, Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;->ENROLL:Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;

    iput-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mEnrollState:Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;

    :cond_41
    iget-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxOtherCases:Z

    if-eqz v2, :cond_62

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "KnoxKeyguardEventFlag"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.samsung.knox.kss"

    const-string/jumbo v4, "com.samsung.knox.kss.KnoxKeyguardService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_62
    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v2, :cond_6e

    :try_start_66
    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v2}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTts:Landroid/speech/tts/TextToSpeech;
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_6e} :catch_e4

    :cond_6e
    :goto_6e
    iget-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsPreEnrolled:Z

    if-eqz v2, :cond_7c

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:[B

    if-nez v2, :cond_7c

    iget-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsInMultiWindowMode:Z

    xor-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_b3

    :cond_7c
    const-string/jumbo v2, "lock_screen_pin_pattern_password"

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b3

    const-string/jumbo v2, "lock_screen_fingerprint"

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b3

    const-string/jumbo v2, "google_setupwizard_fingerprint"

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b3

    const-string/jumbo v2, "personal_page"

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b3

    const-string/jumbo v2, "app_lock"

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cd

    :cond_b3
    iget-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsReCreated:Z

    if-nez v2, :cond_101

    iget-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsPauseRegistration:Z

    :goto_b9
    if-nez v2, :cond_cd

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v2, :cond_cd

    const-string/jumbo v2, "FpstRegisterTouchFingerprint"

    const-string/jumbo v3, "postEnroll()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v2}, Landroid/hardware/fingerprint/FingerprintManager;->postEnroll()I

    :cond_cd
    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mAuthenticateCancel:Landroid/os/CancellationSignal;

    if-eqz v2, :cond_e0

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mAuthenticateCancel:Landroid/os/CancellationSignal;

    invoke-virtual {v2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_e0

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mAuthenticateCancel:Landroid/os/CancellationSignal;

    invoke-virtual {v2}, Landroid/os/CancellationSignal;->cancel()V

    :cond_e0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void

    :catch_e4
    move-exception v0

    const-string/jumbo v2, "FpstRegisterTouchFingerprint"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error shutting down TTS engine"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6e

    :cond_101
    const/4 v2, 0x1

    goto :goto_b9
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 13

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v4, 0x4

    if-ne p1, v4, :cond_52

    iget-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsSwipeEnrollGuideShow:Z

    if-eqz v4, :cond_d

    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->finishRegistration()V

    return v9

    :cond_d
    const v4, 0x7f120bff

    invoke-static {p0, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v4, "enrollResult"

    invoke-virtual {v2, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v4, "hw_auth_token"

    iget-object v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:[B

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    invoke-virtual {p0, v8, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setResult(ILandroid/content/Intent;)V

    iget-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxOtherCases:Z

    if-nez v4, :cond_32

    iget-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxTwoStep:Z

    if-eqz v4, :cond_57

    :cond_32
    sget-boolean v4, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsEnforcedMultifactorNReset:Z

    if-nez v4, :cond_43

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "com.samsung.knox.kss.PASSWORD_RESET"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/fingerprint/RegisterFingerprint;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_43
    const-string/jumbo v4, "enrollResult"

    invoke-virtual {v2, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v9, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->finish()V

    :cond_52
    :goto_52
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    return v4

    :cond_57
    iget-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mBackEnabled:Z

    if-nez v4, :cond_52

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_52

    iget-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isBackSecond:Z

    if-nez v4, :cond_72

    iput-boolean v9, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isBackSecond:Z

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mBackHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x7d0

    invoke-virtual {v4, v8, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return v9

    :cond_72
    const-string/jumbo v4, "FpstRegisterTouchFingerprint"

    const-string/jumbo v5, "RegisterFingerprint is terminated by Back key !!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v8, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isBackSecond:Z

    const-string/jumbo v4, "enrollResult"

    invoke-virtual {v2, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v4, "hw_auth_token"

    iget-object v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:[B

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    invoke-virtual {p0, v8, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    iget-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mDirectFingerprintLock:Z

    if-eqz v4, :cond_ba

    iget v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUserId:I

    invoke-static {p0, v4}, Lcom/android/settings/notification/RedactionInterstitial;->createStartIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_ba

    const-string/jumbo v4, "FpstRegisterTouchFingerprint"

    const-string/jumbo v5, "launchRedaction [startActivity]"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "google_setupwizard_fingerprint"

    iget-object v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b7

    const-string/jumbo v4, "fromSetupwizard"

    invoke-virtual {v3, v4, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_b7
    :try_start_b7
    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->startActivity(Landroid/content/Intent;)V
    :try_end_ba
    .catch Landroid/content/ActivityNotFoundException; {:try_start_b7 .. :try_end_ba} :catch_d9

    :cond_ba
    :goto_ba
    iget-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsRegisterCompleted:Z

    if-eqz v4, :cond_d4

    iget v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->SCREEN_ID_REGISTER_SECOND:I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0249

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iget v6, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mEnrolledCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p0, v4, v5, v6}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    :cond_d4
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->finish()V

    goto/16 :goto_52

    :catch_d9
    move-exception v0

    const-string/jumbo v4, "FpstRegisterTouchFingerprint"

    const-string/jumbo v5, "launchRedactionInterstitial : Activity Not Found !"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ba
.end method

.method public onMultiWindowModeChanged(Z)V
    .registers 5

    invoke-super {p0, p1}, Landroid/app/Activity;->onMultiWindowModeChanged(Z)V

    const-string/jumbo v0, "FpstRegisterTouchFingerprint"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMultiWindowModeChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsInMultiWindowMode:Z

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 4

    const-string/jumbo v0, "FpstRegisterTouchFingerprint"

    const-string/jumbo v1, "onNewIntent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6

    const/4 v3, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_20

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    :pswitch_d
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "enrollResult"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v3, v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->finish()V

    return v3

    :pswitch_data_20
    .packed-switch 0x102002c
        :pswitch_d
    .end packed-switch
.end method

.method public onPause()V
    .registers 7

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string/jumbo v1, "FpstRegisterTouchFingerprint"

    const-string/jumbo v2, "onPause"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setRequestedOrientation(I)V

    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->EnableSystemKey()V

    iput-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsPauseRegistration:Z

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->stop()I

    :cond_21
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_3a

    const-string/jumbo v1, "FpstRegisterTouchFingerprint"

    const-string/jumbo v2, "mMediaPlayer.release()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    iput-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMediaPlayer:Landroid/media/MediaPlayer;

    :cond_3a
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTextureView:Landroid/view/TextureView;

    if-eqz v1, :cond_4a

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->destroyDrawingCache()V

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v1, v3}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    iput-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTextureView:Landroid/view/TextureView;

    :cond_4a
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mSurface:Landroid/view/Surface;

    if-eqz v1, :cond_55

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    iput-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mSurface:Landroid/view/Surface;

    :cond_55
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mLiftFingerMessage:Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;

    if-eqz v1, :cond_60

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mLiftFingerMessage:Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;->interrupt()V

    iput-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mLiftFingerMessage:Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;

    :cond_60
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->removeErrorMessageHandler()V

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsRegisterStarted:Z

    if-eqz v1, :cond_b7

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mEnrollState:Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;

    sget-object v2, Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;->NONE:Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;

    if-eq v1, v2, :cond_70

    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->cancelEnrollment()V

    :cond_70
    iget-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFinishRegistration:Z

    if-nez v1, :cond_a9

    iput-boolean v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsReCreated:Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:[B

    if-eqz v1, :cond_87

    const-string/jumbo v1, "hw_auth_token"

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    :cond_87
    const-string/jumbo v1, "enrollResult"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFromSetupwizard:Z

    if-eqz v1, :cond_b8

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsButtonClicked:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_b8

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v1, :cond_b8

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_b8

    invoke-virtual {p0, v4, v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setResult(ILandroid/content/Intent;)V

    :goto_a6
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->finish()V

    :cond_a9
    iget-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFingerGestureSet:Z

    if-eqz v1, :cond_b7

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "fingerprint_gesture_quick"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_b7
    return-void

    :cond_b8
    invoke-virtual {p0, v5, v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setResult(ILandroid/content/Intent;)V

    goto :goto_a6
.end method

.method public onResume()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string/jumbo v0, "FpstRegisterTouchFingerprint"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsPauseRegistration:Z

    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->checkMobileKeyboard()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "FpstRegisterTouchFingerprint"

    const-string/jumbo v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "hw_auth_token"

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:[B

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string/jumbo v0, "IsPreEnrolled"

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsPreEnrolled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "IsReCreated"

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsReCreated:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "fingerprintlockmain"

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mDirectFingerprintLock:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "WasSecureBefore"

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mWasSecureBefore:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onStart()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const-string/jumbo v0, "FpstRegisterTouchFingerprint"

    const-string/jumbo v1, "OnStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStop()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const-string/jumbo v0, "FpstRegisterTouchFingerprint"

    const-string/jumbo v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .registers 12

    new-instance v5, Landroid/view/Surface;

    invoke-direct {v5, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mSurface:Landroid/view/Surface;

    const/4 v4, 0x0

    :try_start_8
    iget-boolean v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFirstGuideShow:Z

    if-eqz v5, :cond_7d

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "android.resource://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/raw/fingerprint_v_01"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    :cond_2f
    :goto_2f
    if-eqz v4, :cond_7c

    iget-object v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v5, :cond_42

    iget-object v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->stop()V

    iget-object v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->release()V

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMediaPlayer:Landroid/media/MediaPlayer;

    :cond_42
    new-instance v5, Landroid/media/MediaPlayer;

    invoke-direct {v5}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5, p0, v4}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/16 v6, 0x9c4

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/media/MediaPlayer;->semSetParameter(II)Z

    iget-object v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v6, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mSurface:Landroid/view/Surface;

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    iget-object v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setLooping(Z)V

    iget-object v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->prepareAsync()V

    iget-object v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v6, Lcom/android/settings/fingerprint/RegisterFingerprint$21;

    invoke-direct {v6, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$21;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v6, Lcom/android/settings/fingerprint/RegisterFingerprint$22;

    invoke-direct {v6, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$22;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    :cond_7c
    :goto_7c
    return-void

    :cond_7d
    iget-boolean v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsRotateGuideShow:Z

    if-eqz v5, :cond_a5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "android.resource://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/raw/fingerprint_h_01"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    goto :goto_2f

    :cond_a5
    iget-boolean v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsSwipeEnrollGuideShow:Z

    if-eqz v5, :cond_2f

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "android.resource://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/raw/fingerprint_recognition_tap"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_cb
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_cb} :catch_f8
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_cb} :catch_ea
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_cb} :catch_dc
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_cb} :catch_ce

    move-result-object v4

    goto/16 :goto_2f

    :catch_ce
    move-exception v0

    const-string/jumbo v5, "FpstRegisterTouchFingerprint"

    const-string/jumbo v6, "IOException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->finish()V

    goto :goto_7c

    :catch_dc
    move-exception v2

    const-string/jumbo v5, "FpstRegisterTouchFingerprint"

    const-string/jumbo v6, "IllegalStateException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->finish()V

    goto :goto_7c

    :catch_ea
    move-exception v3

    const-string/jumbo v5, "FpstRegisterTouchFingerprint"

    const-string/jumbo v6, "SecurityException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->finish()V

    goto :goto_7c

    :catch_f8
    move-exception v1

    const-string/jumbo v5, "FpstRegisterTouchFingerprint"

    const-string/jumbo v6, "IllegalArgumentException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->finish()V

    goto/16 :goto_7c
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .registers 4

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .registers 2

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_1e

    :cond_7
    :goto_7
    :pswitch_7
    const/4 v0, 0x1

    return v0

    :pswitch_9
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mHideErrorHandler:Landroid/os/Handler;

    if-eqz v0, :cond_7

    const-string/jumbo v0, "FpstRegisterTouchFingerprint"

    const-string/jumbo v1, "Remove_Error_Runnable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mHideErrorHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mHideErrorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_7

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_9
        :pswitch_7
        :pswitch_9
        :pswitch_7
    .end packed-switch
.end method
