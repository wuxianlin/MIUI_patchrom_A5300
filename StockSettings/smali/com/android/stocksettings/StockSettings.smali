.class public Lcom/android/stocksettings/StockSettings;
.super Landroid/preference/PreferenceActivity;
.source "StockSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final KEY_DEVICE:Ljava/lang/String; = "sdcard"

.field private static final KEY_FLASH_RECOVERY:Ljava/lang/String; = "flash_recovery"


# instance fields
.field private mFlashRecovery:Landroid/preference/Preference;

.field private mSdcard:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    invoke-virtual {p0}, Lcom/android/stocksettings/StockSettings;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 23
    .local v0, prefs:Landroid/content/SharedPreferences;
    const v1, 0x7f030001

    invoke-virtual {p0, v1}, Lcom/android/stocksettings/StockSettings;->addPreferencesFromResource(I)V

    .line 24
    const-string v1, "flash_recovery"

    invoke-virtual {p0, v1}, Lcom/android/stocksettings/StockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/stocksettings/StockSettings;->mFlashRecovery:Landroid/preference/Preference;

    .line 25
    const-string v1, "sdcard"

    invoke-virtual {p0, v1}, Lcom/android/stocksettings/StockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/stocksettings/StockSettings;->mSdcard:Landroid/preference/ListPreference;

    .line 26
    iget-object v1, p0, Lcom/android/stocksettings/StockSettings;->mSdcard:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 27
    iget-object v1, p0, Lcom/android/stocksettings/StockSettings;->mSdcard:Landroid/preference/ListPreference;

    invoke-virtual {p0, v1}, Lcom/android/stocksettings/StockSettings;->setListPreferenceSummary(Landroid/preference/ListPreference;)V

    .line 29
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 48
    iget-object v2, p0, Lcom/android/stocksettings/StockSettings;->mSdcard:Landroid/preference/ListPreference;

    if-ne v2, p1, :cond_0

    move-object v1, p2

    .line 49
    check-cast v1, Ljava/lang/String;

    .line 50
    .local v1, prefsValue:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/stocksettings/StockSettings;->mSdcard:Landroid/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 51
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 52
    .local v0, mode:I
    packed-switch v0, :pswitch_data_0

    .line 69
    .end local v0           #mode:I
    .end local v1           #prefsValue:Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 54
    .restart local v0       #mode:I
    .restart local v1       #prefsValue:Ljava/lang/String;
    :pswitch_0
    const v2, 0x7f060010

    invoke-virtual {p1, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 55
    const-string v2, "busybox mount -o remount,rw /system"

    invoke-static {v2}, Lcom/android/stocksettings/RootCmd;->RunRootCmd(Ljava/lang/String;)I

    .line 56
    const-string v2, "cp /system/etc/vold0 /system/etc/vold.fstab"

    invoke-static {v2}, Lcom/android/stocksettings/RootCmd;->RunRootCmd(Ljava/lang/String;)I

    .line 57
    const-string v2, "reboot"

    invoke-static {v2}, Lcom/android/stocksettings/RootCmd;->RunRootCmd(Ljava/lang/String;)I

    goto :goto_0

    .line 60
    :pswitch_1
    const v2, 0x7f060011

    invoke-virtual {p1, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 61
    const-string v2, "busybox mount -o remount,rw /system"

    invoke-static {v2}, Lcom/android/stocksettings/RootCmd;->RunRootCmd(Ljava/lang/String;)I

    .line 62
    const-string v2, "cp /system/etc/vold1 /system/etc/vold.fstab"

    invoke-static {v2}, Lcom/android/stocksettings/RootCmd;->RunRootCmd(Ljava/lang/String;)I

    .line 63
    const-string v2, "reboot"

    invoke-static {v2}, Lcom/android/stocksettings/RootCmd;->RunRootCmd(Ljava/lang/String;)I

    goto :goto_0

    .line 52
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/stocksettings/StockSettings;->mFlashRecovery:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    .line 33
    const-string v0, "dd if=/sdcard/recovery.img of=/dev/recovery"

    invoke-static {v0}, Lcom/android/stocksettings/RootCmd;->RunRootCmd(Ljava/lang/String;)I

    .line 36
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public setListPreferenceSummary(Landroid/preference/ListPreference;)V
    .locals 1
    .parameter "mListPreference"

    .prologue
    .line 40
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 41
    const v0, 0x7f060010

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 45
    :goto_0
    return-void

    .line 44
    :cond_0
    const v0, 0x7f060011

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0
.end method
