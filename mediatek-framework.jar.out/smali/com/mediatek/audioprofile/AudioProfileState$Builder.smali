.class public Lcom/mediatek/audioprofile/AudioProfileState$Builder;
.super Ljava/lang/Object;
.source "AudioProfileState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/audioprofile/AudioProfileState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAlarmVolume:I

.field private mDtmfToneEnabled:Z

.field private mHapticFeedbackEnabled:Z

.field private mLockScreenSoundEnabled:Z

.field private mNoficationUseRingVolume:Z

.field private mNotificationStream:Landroid/net/Uri;

.field private mNotificationVolume:I

.field private final mProfileKey:Ljava/lang/String;

.field private mRingerStream:Landroid/net/Uri;

.field private mRingerVolume:I

.field private mSoundEffectEnbled:Z

.field private mVibrationEnabled:Z

.field private mVideoCallStream:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "profileKey"

    .prologue
    const/4 v1, 0x0

    .line 108
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 89
    sget-object v0, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_RINGER_STREAM_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mRingerStream:Landroid/net/Uri;

    .line 90
    sget-object v0, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_NOTIFICATION_STREAM_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mNotificationStream:Landroid/net/Uri;

    .line 91
    sget-object v0, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_VIDEO_STREAM_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mVideoCallStream:Landroid/net/Uri;

    .line 92
    iput v1, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mRingerVolume:I

    .line 93
    iput v1, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mNotificationVolume:I

    .line 94
    iput v1, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mAlarmVolume:I

    .line 95
    iput-boolean v1, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mVibrationEnabled:Z

    .line 96
    iput-boolean v1, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mDtmfToneEnabled:Z

    .line 97
    iput-boolean v1, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mSoundEffectEnbled:Z

    .line 98
    iput-boolean v1, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mLockScreenSoundEnabled:Z

    .line 99
    iput-boolean v1, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mHapticFeedbackEnabled:Z

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mNoficationUseRingVolume:Z

    .line 109
    iput-object p1, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mProfileKey:Ljava/lang/String;

    .line 110
    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mProfileKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mDtmfToneEnabled:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mHapticFeedbackEnabled:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mLockScreenSoundEnabled:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mNoficationUseRingVolume:Z

    return v0
.end method

.method static synthetic access$200(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mRingerStream:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mNotificationStream:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mVideoCallStream:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget v0, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mRingerVolume:I

    return v0
.end method

.method static synthetic access$600(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget v0, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mAlarmVolume:I

    return v0
.end method

.method static synthetic access$700(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget v0, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mNotificationVolume:I

    return v0
.end method

.method static synthetic access$800(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mVibrationEnabled:Z

    return v0
.end method

.method static synthetic access$900(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mSoundEffectEnbled:Z

    return v0
.end method


# virtual methods
.method public build()Lcom/mediatek/audioprofile/AudioProfileState;
    .locals 2

    .prologue
    .line 214
    new-instance v0, Lcom/mediatek/audioprofile/AudioProfileState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/audioprofile/AudioProfileState;-><init>(Lcom/mediatek/audioprofile/AudioProfileState$Builder;Lcom/mediatek/audioprofile/AudioProfileState$1;)V

    return-object v0
.end method

.method public dtmfTone(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;
    .locals 0
    .parameter "enable"

    .prologue
    .line 168
    iput-boolean p1, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mDtmfToneEnabled:Z

    .line 169
    return-object p0
.end method

.method public hapticFeedback(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;
    .locals 0
    .parameter "enable"

    .prologue
    .line 204
    iput-boolean p1, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mHapticFeedbackEnabled:Z

    .line 205
    return-object p0
.end method

.method public lockScreenSound(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;
    .locals 0
    .parameter "enable"

    .prologue
    .line 192
    iput-boolean p1, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mLockScreenSoundEnabled:Z

    .line 193
    return-object p0
.end method

.method public ringtone(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)Lcom/mediatek/audioprofile/AudioProfileState$Builder;
    .locals 0
    .parameter "voiceCallUri"
    .parameter "notificationUri"
    .parameter "videoCallUri"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mRingerStream:Landroid/net/Uri;

    .line 125
    iput-object p2, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mNotificationStream:Landroid/net/Uri;

    .line 126
    iput-object p3, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mVideoCallStream:Landroid/net/Uri;

    .line 127
    return-object p0
.end method

.method public soundEffect(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;
    .locals 0
    .parameter "enable"

    .prologue
    .line 180
    iput-boolean p1, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mSoundEffectEnbled:Z

    .line 181
    return-object p0
.end method

.method public vibration(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;
    .locals 0
    .parameter "enable"

    .prologue
    .line 156
    iput-boolean p1, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mVibrationEnabled:Z

    .line 157
    return-object p0
.end method

.method public volume(III)Lcom/mediatek/audioprofile/AudioProfileState$Builder;
    .locals 0
    .parameter "ringerVolume"
    .parameter "notificationVolume"
    .parameter "alarmVolume"

    .prologue
    .line 142
    iput p1, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mRingerVolume:I

    .line 143
    iput p2, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mNotificationVolume:I

    .line 144
    iput p3, p0, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->mAlarmVolume:I

    .line 145
    return-object p0
.end method
