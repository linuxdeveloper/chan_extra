	$self->{IS_GSM} = 0;

	foreach my $cardtype (@gsm_strings) {
		if($head =~ m/$cardtype/) {
			my $termtype = "gsm";
			$self->{IS_DIGITAL} = 1;
			$self->{IS_GSM} = 1;
			$self->{TERMTYPE} = $termtype; # TE, NT
			#Needed for some versions of dahdi
			#$self->{TYPE} = SPANTYPE_DIGITAL_BRI_$termtype;
			$self->{TYPE} = "BRI_$termtype";
			$self->{DCHAN_IDX} = 1;
			$self->{BCHAN_LIST} = [0];
			last;
		}
	}
